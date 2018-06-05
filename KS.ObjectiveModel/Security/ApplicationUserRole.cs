﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity.EntityFramework;

namespace KS.ObjectiveModel.Security
{
    public class ApplicationUserRole : IdentityUserRole<int>
    {
        [ForeignKey("RoleId")]
        public ApplicationRole Role { get; set; }

        [ForeignKey("UserId")]
        public ApplicationUser User { get; set; }
    }
}
