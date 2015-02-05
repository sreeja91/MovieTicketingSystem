using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SA38_MovieTicketingSystem.MTS_Broker;

namespace SA38_MovieTicketingSystem.MTS_Controller
{
    public class MemberController
    {
        private MemberBroker memberBroker = new MemberBroker();

        public Member SelectMemberById(String username)
        {
            return memberBroker.SelectMemberById(username);
        }

        public Member LogonMember(String username)
        {
            return memberBroker.LogonMember(username);
        }
        public Member LogonMemberById(String username, String password)
        {
            return memberBroker.LogonMemberById(username, password);
        }

        public Member CreateMemberById(String username, String password)
        {
            return memberBroker.CreateMemberById(username, password);
        }

        public bool UpdateMemberById(Member update)
        {
            return memberBroker.UpdateMemberById(update);
        }
    }
}