using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Documents;

namespace ProjectFeesWindows
{
    public class States
    {
        public List<StateFee> ServiceAreaStateFees = new List<StateFee>();
        public decimal OutOfAreaFee {
            get;private set;
        }
        public States()
        {
            ServiceAreaStateFees.Add(new StateFee("Alaska", "AK", 8.99m));
            ServiceAreaStateFees.Add(new StateFee("Alabama", "AL", 5.49m));
            ServiceAreaStateFees.Add(new StateFee("Colorado", "CO", 2.00m));
            OutOfAreaFee = 49.99m;
        }

        public decimal GetFeeForState(string twoLetterCode)
        {
            var state = ServiceAreaStateFees.FirstOrDefault(f => f.TwoLetterCode.Equals(twoLetterCode.ToUpper()));
            return state != null ? state.Fee : OutOfAreaFee;
        }
    }
}
