﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using KS.Model.ContentManagement;
using KS.Core.Model;
using KS.Core.Model.Log;

namespace KS.Model.Base
{
    public abstract class BaseEntityWithoutRoles : ILogEntity
    {
        public static string GetSelfEntityTableName()
        {
            return "";
        }
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [StringLength(8)]
        public string Language { get; set; }
        public int? CreateUserId { get; set; }
        public int? ModifieUserId { get; set; }

        [ForeignKey("CreateUserId")]
        public UserProfile CreateUser { get; set; }

        [ForeignKey("ModifieUserId")]
        public UserProfile ModifieUser { get; set; }
        //public int ViewCount { get; set; }

        [StringLength(19)]
        public string CreateLocalDateTime { get; set; }

        [StringLength(19)]
        public string ModifieLocalDateTime { get; set; }

        [StringLength(19)]
        public string AccessLocalDateTime { get; set; }
        public DateTime CreateDateTime { get; set; }
        public DateTime ModifieDateTime { get; set; }
        public DateTime AccessDateTime { get; set; }
        public int Status { get; set; }

        [Timestamp]
        public byte[] RowVersion { get; set; }
    }
}
