# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.hr/hr/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.dns.hr.rb'

describe Whois::Parsers::WhoisDnsHr, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.dns.hr/hr/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("From May 25, 2018, it  is mandatory  to apply  the  provisions  of the General Data Protection Regulation (EU) 2016/679. The basic purpose of the regulation is greater control for  individuals over their personal information. In  accordance  with  the  provisions  of  the General Data Protection Regulation (EU) 2016/679,  we inform you that the personal data of the domain holder and  the contact persons under  the domain holder are no longer publicly available through the domain search engine. If you believe that there is a legitimate reason for which you need to be provided with the data about the domain  holder please fill  in the Request form for personal data disclosure : https://domene.hr/portal/files/Request_personal_data_disclosure.pdf")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.hr")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2011-09-20T22:00:00Z"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2012-08-28T22:00:00Z"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2021-09-20T22:00:00Z"))
    end
  end
  describe "#registrar" do
    it do
      expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq(nil)
      expect(subject.registrant_contacts[0].name).to eq("Google Hrvatska d.o.o.")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("Zagreb, Ulica Petra Hektorovića 2, 10000")
      expect(subject.registrant_contacts[0].city).to eq("Zagreb")
      expect(subject.registrant_contacts[0].zip).to eq("10000")
      expect(subject.registrant_contacts[0].state).to eq("HR")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#nameservers" do
    it do
      expect { subject.nameservers }.to raise_error(Whois::AttributeNotSupported)
    end
  end
end
