using System;
using System.ComponentModel.DataAnnotations;
using EZ.Framework;
using Vanke.WX.Weixin.Common;

namespace Vanke.WX.Weixin.Data.Entity
{
    public partial class DinnerRegisterHistory : IEntity
    {
        public long ID { get; set; }

        public long StaffID { get; set; }

        public DateTime DinnerDate { get; set; }

        public int PeopleCount { get; set; }

        public long TypeID { get; set; }

        public long PlaceID { get; set; }

        public DinnerRegisterStatus Status { get; set; }

        [StringLength(500)]
        public string Comment { get; set; }

        public DateTime RegisteredOn { get; set; }

        public DateTime? CancelledOn { get; set; }

        public long? CancelledBy { get; set; }

        public virtual DinnerPlace DinnerPlace { get; set; }

        public virtual DinnerType DinnerType { get; set; }

        public virtual Staff Staff { get; set; }
    }
}
