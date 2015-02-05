using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SA38_MovieTicketingSystem.MTS_Broker
{
    public class MemberBroker
    {
        private SA38_MovieTicketingDBEntities MovieTicketingEntities = new SA38_MovieTicketingDBEntities();

        public Member SelectMemberById(String username)
        {
            var v = from member in MovieTicketingEntities.Members
                    where member.Id == username
                    select member;
            return v.FirstOrDefault();
        }

        public Member LogonMember(String username)
        {
            var v = from member in MovieTicketingEntities.Members
                    where member.Id == username
                    select member;
            return v.FirstOrDefault();
        }

        public Member LogonMemberById(String username, String password)
        {
            var v = from member in MovieTicketingEntities.Members
                    where member.Id == username
                    where member.NRIC == password
                    select member;
            return v.FirstOrDefault();
        }

        public Member CreateMemberById(String username, String password)
        {
            if (SelectMemberById(username) == null)
            {
                Member tempMember = new Member();
                tempMember.Id = username;
                tempMember.Name = "";
                tempMember.NRIC = password;
                //tempMember.DOB = DateTime.Now;

                MovieTicketingEntities.Members.AddObject(tempMember);
                MovieTicketingEntities.SaveChanges();

                return LogonMemberById(username, password);
            }
            else
                return null;
        }

        public bool UpdateMemberById(Member update)
        {
            Member tempMember = new Member();
            tempMember = SelectMemberById(update.Id);

            if (tempMember != null)
            {
                tempMember.Name = update.Name;
                //tempMember.DOB = update.DOB;
                tempMember.Address = update.Address;
                tempMember.PhoneNumber = update.PhoneNumber;
                tempMember.Email = update.Email;
                if (update.NRIC != "")
                    tempMember.NRIC = update.NRIC;

                if (MovieTicketingEntities.SaveChanges() == 1)
                    return true;
                else
                    return false;
            }
            else
                return false;
        }
    }
}