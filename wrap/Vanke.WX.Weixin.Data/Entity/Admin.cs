namespace Vanke.WX.Weixin.Data.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Admin
    {
        public long ID { get; set; }

        [Required]
        [StringLength(50)]
        public string RealName { get; set; }

        [Required]
        [StringLength(50)]
        public string LoginName { get; set; }

        [Required]
        [StringLength(50)]
        public string Password { get; set; }

        public int Status { get; set; }

        public DateTime? CreatedOn { get; set; }

        public long? CreatedBy { get; set; }

        public DateTime? UpdatedOn { get; set; }

        public long? UpdatedBy { get; set; }
    }
}
