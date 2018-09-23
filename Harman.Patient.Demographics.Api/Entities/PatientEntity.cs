using System;
using System.Collections.Generic;
using System.Text;

namespace Harman.Data.Entity.Entities
{
    public class PatientEntity
    {
        public int PatientId { get; set; }
        public string FirstName { get; set; }
        public string SurName { get; set; }
        public int Gender { get; set; }
        public DateTime DOB { get; set; }
        public List<TelephoneEntity> TelePhone { get; set; }
    }
}
