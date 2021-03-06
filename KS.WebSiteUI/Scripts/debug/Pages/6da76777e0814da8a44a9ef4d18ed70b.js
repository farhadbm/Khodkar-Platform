﻿ $('#i6da76777e0814da8a44a9ef4d18ed70b').on($.asEvent.page.loaded, function (event,requestedUrl,asPageParams) { console.log('Add or Update User');var asPageEvent = '#i6da76777e0814da8a44a9ef4d18ed70b'; var asPageId = '.i6da76777e0814da8a44a9ef4d18ed70b.' + $.asPageClass; var as = function(id){var asSelector = new $.as({pageId:asPageId});return asSelector.as(id)};var asOnPageDispose = function(){}; $(asPageEvent).on($.asEvent.page.dispose, function (event) { asOnPageDispose()});  $.asUrls = $.extend({security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20'@lang')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",security_Group_getAllByOtherLanguage:"/odata/security/LocalGroups?$filter=Language%20eq%20'@lang'&$expand=Group&$select=Group%2FId%2CGroup%2FParentId%2CGroup%2FName%2CGroup%2FOrder%2CGroup%2FIsLeaf%2CName",security_User_GetUsersByPaging:"/security/user/GetUsersByPagination/@groupId/@orderby/@skip/@take",security_User_Save:"/security/user/Save",security_User_Dell:"/security/user/delete"}, $.asUrls); var

    $frm = as("#frm"),
    $winAddOrEdit=as("#winAddOrEdit"),
    $drpGroups= as("#drpGroups"),
    $txtLastName=as("#txtLastName"),
    $txtFirstName=as("#txtFirstName"),
    $txtAliasName=as("#txtAliasName"),
    $txtPassword=as("#txtPassword"),
    $txtPasswordAgain=as("#txtPasswordAgain"),
    $txtMail=as("#txtMail"),
    $txtUserName=as("#txtUserName"),
    $grvUsers=as("#grvUsers"),
   $btnNew=as("#btnNew"),
   $btnEdit=as("#btnEdit"),
     $btnDell=as("#btnDell"),
     $btnExecute=as("#btnExecute"),
     $chkStatus=as("#chkStatus"),
     $divRoles=as("#divRoles"),
    $drpViewRole= as("#drpViewRole"),
    $drpModifyRole= as("#drpModifyRole"),
    $drpAccessRole= as("#drpAccessRole"),
    $drpGroupsAddUpdate=as("#drpGroupsAddUpdate"),
    $chkChangePass=as("#chkChangePass"),
    $divPass=as("#divPass"),
    groupList=[],
    addedGroupList=[],
    removedGroupList=[],
    isNew=false,
     selectedItems={
         items:{}
     },
     selectedId=0,
      template =
        '<div class="as-material-switch container-fluid @class"><div><input name="chkStatusGrid" type="checkbox" @status /><label class="label-default as-label" for="chkStatusGrid" >  </label></div></div>',
     validate;
     
     var onSuccess = function(){
           $.asShowMessage({ message: $.asRes[$.asLang].successOpration });
              selectedItems.items={};
              $grvUsers.asBootGrid("deselect");
     }
     var validateRule = {
         drpViewRole: {
            asType: 'asDropdown',
            required: true
        },
        drpAccessRole: {
            asType: 'asDropdown',
            required: true
        },drpModifyRole: {
            asType: 'asDropdown',
            required: true
        },
         txtLastName:{
            required: true
        },
        txtAliasName:{
            required: true
        },
        txtPassword: {
            required: {
                depends: function (element) {
                return $chkChangePass.is(':checked')===true;
                }
            },
            minlength:$chkChangePass.is(':checked')===true ? 6:0,
            maxlength: 20
        },
         txtPasswordAgain: {
            equalTo: "#txtPassword"
        },
         txtFirstName:{
            required: true
        },
         txtUserName: {
            required: true,
            minlength: 5,
            maxlength: 45,
            email: true
        },
         txtMail: {
            required: true,
            minlength: 5,
            maxlength: 45,
            email: true
        }
    };
    
    validate =$frm.asValidate({ rules: validateRule});
    
     $winAddOrEdit.asModal(
    {backdrop:'static', keyboard: false}
    );

     
 var loadGroups = function () {
    return $.asAjaxTask({
        url:   $.asInitService($.asUrls.security_Group_getAllByOtherLanguage, [{ name: '@lang', value: $.asLang }])
    });
}
        as("#divGroups").asAfterTasks([
    loadGroups()
], function (groups) {
            $drpGroups.asDropdown({
                source: {
                    hierarchy:
                    {
                        type: 'flat',
                        keyDataField: { name: 'Group.Id' },
                        parentDataField: { name: 'Group.ParentId' },
                       // removeChildLessParent: false
                    },
                   localData:groups
                    , displayDataField: 'Name'
                      , valueDataField: 'Group.Id',
                    orderby: 'Group.Order'
                }
            });
        $drpGroupsAddUpdate.asDropdown({
            source: {
                hierarchy:
                {
                    type: 'flat',
                    keyDataField: { name: 'Group.Id' },
                    parentDataField: { name: 'Group.ParentId' },
                    removeChildLessParent: false
                },
               localData:groups
                , displayDataField: 'Name'
                  , valueDataField: 'Group.Id',
                orderby: 'Group.Order'
            },
        multiple:true
        
        });
}, { overlayClass: 'as-overlay-relative' });


var loadRoles = function () {
    return $.asAjaxTask({
        url: $.asInitService($.asUrls.security_Role_getAllByOtherLanguage, [{ name: '@lang', value: $.asLang }])
    });
}

$divRoles.asAfterTasks([
    loadRoles()
], function (roles) {

    $drpViewRole.asDropdown({
        source: {
            hierarchy:
            {
                type: 'flat',
                keyDataField: { name: 'Role.Id' },
                parentDataField: { name: 'Role.ParentId' },
                childrenDataField: 'Children',
                isLeafDataField: 'Role.IsLeaf',
                removeChildLessParent: true
            },
            valueDataField: 'Role.Id',
            displayDataField: 'Name',
            orderby: 'Role.Order',
            localData: roles
        }

    })
    $drpAccessRole.asDropdown({
        source: {
            hierarchy:
            {
                type: 'flat',
                keyDataField: { name: 'Role.Id' },
                parentDataField: { name: 'Role.ParentId' },
                childrenDataField: 'Children',
                isLeafDataField: 'Role.IsLeaf',
                removeChildLessParent: true
            },
            valueDataField: 'Role.Id',
            displayDataField: 'Name',
            orderby: 'Role.Order',
            localData: roles
        }

    })

    $drpModifyRole.asDropdown({
        source: {
            hierarchy:
            {
                type: 'flat',
                keyDataField: { name: 'Role.Id' },
                parentDataField: { name: 'Role.ParentId' },
                childrenDataField: 'Children',
                isLeafDataField: 'Role.IsLeaf',
                removeChildLessParent: true
            },
            valueDataField: 'Role.Id',
            displayDataField: 'Name',
            orderby: 'Role.Order',
            localData: roles
        }

    })

}, { overlayClass: 'as-overlay-relative' });
 
    var reloadGrid = function(){
               $grvUsers.asBootGrid("reload");
    }

    var calculateSelectedUser = function(event, rows){

        if(event.type==="selected"){
            selectedItems.items[rows[0].UserName]=rows[0];
        }else{
            delete selectedItems.items[rows[0].UserName];
        }
    }
     var bindEvent = function(){
         var notFound = function(){
         $.asNotFound(" User")
        }
        var setUser = function(user){
                groupList=[];
                addedGroupList=[];
                removedGroupList=[];
            selectedId=user.Id;
            if(user.LastName !== null)
            $txtLastName.val(user.LastName);
            else
            $txtLastName.val("");
            
            if(user.FirstName !== null)
            $txtFirstName.val(user.FirstName);
            else
            $txtFirstName.val("");
            
            if(user.AliasName !== null)
            $txtAliasName.val(user.AliasName);
            else
            $txtAliasName.val("");
            
            if(user.Email !== null)
            $txtMail.val(user.Email);
            else
            $txtMail.val("");
            
            if(user.UserName !== null)
            $txtUserName.val(user.UserName);
            else
            $txtUserName.val("");
            
            if(isNew)
            $txtUserName.removeAttr("disabled");
            else
            $txtUserName.attr("disabled", "disabled");
            
           $txtPassword.val("");
            $txtPasswordAgain.val("");
            
            $chkStatus.prop('checked', user.Status);
            $chkChangePass.prop('checked', false);
            $divPass.hide();
            
            
              $.each(user.Groups,function(i,v){
                groupList.push(v.GroupId)
            });
            
            $drpGroupsAddUpdate.asDropdown('selectValue', [], true);
            $drpGroupsAddUpdate.asDropdown('selectValue', groupList);
             
            if (user.ViewRoleId !== null)
                $drpViewRole.asDropdown('selectValue', user.ViewRoleId)
            else
                $drpViewRole.asDropdown('selectValue', [], true)
            if (user.AccessRoleId !== null)
                $drpAccessRole.asDropdown('selectValue', user.AccessRoleId)
            else
                $drpAccessRole.asDropdown('selectValue', [], true)
            if (user.ModifyRoleId !== null)
                $drpModifyRole.asDropdown('selectValue', user.ModifyRoleId)
            else
                $drpModifyRole.asDropdown('selectValue', [], true)
                
        };
    $(asPageEvent).on($.asEvent.page.ready, function (event) {
           
                $grvUsers.asBootGrid({
    rowCount:[10,25,50,100],
    source:{
        url:''
    },
    requestHandler:function(request){
         if ($drpGroups.asDropdown('selected')) {
        
             selectedItems.items={};

        var orderbyValue = "UserName desc"
        var skip = 0
        if(request.current > 1)
        skip=(request.current - 1) * request.rowCount
        $.each(request.sort, function(key, value) {
                 orderbyValue = key + " " + value
                });

        request.url = $.asInitService($.asUrls.security_User_GetUsersByPaging, [
            { name: '@groupId', value: $drpGroups.asDropdown('selected').value }
            ,{ name: '@orderby', value: orderbyValue }
            ,{ name: '@skip', value: skip }
             ,{ name: '@take', value: request.rowCount}]);
                  selectedItems.items={};
              $grvUsers.asBootGrid("deselect");
             return request
         }
         return null;
    },
    formatters: {
        Status: function (column, row)
        {
            return row.Status ? template.replace('@status','checked="checked"').replace('@class',''):template.replace('@status','').replace('@class','status');
        }
    },
        selection: true,
        rowSelect:true,
        multiSelect:true
}).on("selected.rs.jquery.asBootGrid", function(e, rows)
{
    calculateSelectedUser(e,rows)
    
}).on("deselected.rs.jquery.asBootGrid", function(e, rows)
{
    calculateSelectedUser(e,rows)
});
            
        });
        
         $drpGroups.on("change", function (event, item) {
            $grvUsers.asBootGrid("reload");
        });
        
        $drpGroupsAddUpdate.on("change", function (event, item) {
             
                     
             if (typeof (item.value) != "undefined") {
   
                   
                        if(groupList.indexOf(item.value) > -1){
                            if(item.selected === false)
                                removedGroupList.push(item.value)
                                else{
                                   
                                     if (removedGroupList.indexOf(item.value) > -1) {
                                        removedGroupList.splice(index, 1);
                                    }
                                }
                        }else{
                                   if(item.selected === true)
                                addedGroupList.push(item.value)
                                else{
                                  
                                     if (addedGroupList.indexOf(item.value) > -1) {
                                        addedGroupList.splice(index, 1);
                                    }
                                }
                        }
                  
                }
             
         });
        

        
        $btnNew.click(function () {
          
            isNew=true;
            $winAddOrEdit.asModal("show");
            setUser({
                Id:0,
                LastName:null,
                FirstName:null,
                Email:null,
                UserName:null,
                AliasName:null,
                Status:false,
                ViewRoleId:null,
                ModifyRoleId:null,
                AccessRoleId:null
            });
        });
        
        $btnDell.click(function () {
         var users=[]
              $.each(selectedItems.items,function(i,v){
                users.push(v)
            });
            
          if (users.length === 1) {
                
            $btnDell.asAjax({
            url:$.asUrls.security_User_Dell,
            data: JSON.stringify({
               Id:users[0].Id
            }),
            success: function (result) {
                $btnDell.button('reset')
                $grvUsers.asBootGrid("remove");
             onSuccess()
            },error:function(){
                $btnDell.button('reset')
            }
        },{validate: false,overlayClass: "as-overlay-absolute"});
         $btnDell.button('loading');
            }else{
                       $.asShowMessage({template:"error", message: "A user must be selected for removal"});
            }
        
        });
        
        $btnEdit.click(function () {
            isNew=false;   
             var users=[]
              $.each(selectedItems.items,function(i,v){
                users.push(v)
                });
            
              if (users.length === 1) {
                $winAddOrEdit.asModal("show");
                setUser(users[0]);
              }else{
                     $.asShowMessage({template:"error", message: "A user must be selected for edit"});
              }
        });
    
        as("#btnCancel").click(function () {
            
       $winAddOrEdit.asModal('hide');
        });
        
        $btnExecute.click(function () {
            
         $winAddOrEdit.asAjax({
            url: $.asUrls.security_User_Save,
            data: JSON.stringify({
                Id:selectedId,
                AliasName:$txtAliasName.val(),
                LastName:$txtLastName.val(),
                FirstName:$txtFirstName.val(),
                Status:$chkStatus.is(':checked'),
                ViewRoleId: $drpViewRole.asDropdown('selected').value,
                ModifyRoleId: $drpModifyRole.asDropdown('selected').value,
                AccessRoleId: $drpAccessRole.asDropdown('selected').value,
                Password:$txtPassword.val(),
                UserName:$txtUserName.val(),
                IsChangePass:$chkChangePass.is(':checked'),
                Email:$txtMail.val(),
                RemovedList:removedGroupList,
                AddedList:addedGroupList,
                IsNew:isNew
            }),
            success: function (result) {
                if(selectedId!==0){
                     $grvUsers.asBootGrid("remove");
                }
                $grvUsers.asBootGrid("append",[result])
              $.asShowMessage({ message: $.asRes[$.asLang].successOpration });
            }
        },{$form: $frm,overlayClass: "as-overlay-absolute"});
              
        });
        
         $chkChangePass.change(function () {
          if(this.checked === true)
          {
              $divPass.show();
          }else{
              $divPass.hide();
          }
        });

        asOnPageDispose = function(){
          $grvUsers.asBootGrid("destroy");
           validate.destroy();
        }
     }
     bindEvent();  ; $(asPageId).append('<span id="asRegisterPage"></span>');as('#asRegisterPage').asRegisterPageEvent(); if (typeof (requestedUrl) != 'undefined')  
                {$.asLoadPage(requestedUrl,requestedUrl.replace(/\//g, $.asUrlDelimeter));} });