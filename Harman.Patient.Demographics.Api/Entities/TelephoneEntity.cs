using System;
using System.Collections.Generic;
using System.Text;

namespace Harman.Data.Entity.Entities
{
    public class TelephoneEntity
    {
        public int TelephoneId { get; set; }
        public string Number { get; set; }        
        public PatientEntity PatientEntity { get; set; }
        public int Type { get; set; }      
    }
}
