Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35AB53E590D
	for <lists+linux-spdx@lfdr.de>; Tue, 10 Aug 2021 13:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238181AbhHJL1j (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 10 Aug 2021 07:27:39 -0400
Received: from mga02.intel.com ([134.134.136.20]:62549 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229967AbhHJL1j (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Tue, 10 Aug 2021 07:27:39 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="202064253"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; 
   d="scan'208";a="202064253"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 04:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; 
   d="scan'208";a="468996699"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by orsmga008.jf.intel.com with ESMTP; 10 Aug 2021 04:27:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 10 Aug 2021 04:27:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 04:27:15 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 04:27:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTlLTazkxH/RxfXBO4+Ye7tdKsaPIENMkHYAbOg3BQhdqZq3/l2tqeOPUS1m0VXkkOQboTyVBvkE+PQjBxTcSittZDGuPlhOIcjP4FKZv4+mQuTJ82qODM/3xYEelPQQSpGZpB+8WlxT3Xm4s+caQv7Kf2URiRFZUrs63qy5qu/KBpypTZjnVxd9sQt8oQeruVTh5i+S0ln+Svp3z7ohvdVlWRJ+FFyHr5MuN27eAa6NyjaSNezkMEUCoRUSyw0xJV0flW2hJX54tAeKfPobIfe/qA1g/+DRlLHf2QniCRrnsbFghLpHlLGtBukee+czOTVFCL96DJmyoAco9s7cOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gx30crqGQ7vl0g/lrJ3cJe/2bepzmL+NL3ckK1hgW2Y=;
 b=V26QvpQiNK5J19QERNr17rt9EcGNHEWlHRxc5bYvPVrDUlYb1ndXeMREotwN9yr+3IoMtKR1sOSp8R56jcSdPqCwIVUtMM7OWMogEm3mANN964LbR2JfSEgSv4+A6ZCxBD6UyqGJpHC1OuNxuXtOCzNPY9zU5R1KANsSFPTcRpoQ+ZOkcVYtdz8eADDaLsWz95E27uLqVBHhTurZNtIRSKOBI8WxtseR9theGfbmUvx1sKeX8CDOrWg60B/58ACQpup5hW3D0erVMZXIULzmJ0CQB/D6B/xahu11eyOt5NPrWfUrq1MMJ3oOwaZddVHjIjfjFMKHeya50LHpbGOkqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gx30crqGQ7vl0g/lrJ3cJe/2bepzmL+NL3ckK1hgW2Y=;
 b=wz6pX9ESQPDPPRUqr3rgb4ZKVLGjl5ByV9f9C7q4TuyJvNDYw7pRh0BOAXUrQWw05m8HddRgzKP6GvjvtqWUOf3vaK4GdWZEe6vMO+6YaG5zlJINcHATjlfJ6nXn2ElznCIqkOKfzDDo2MecPQ3j7KPTmjsgBcAH0MLJzDHE8HA=
Received: from CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:94::14)
 by MWHPR11MB1357.namprd11.prod.outlook.com (2603:10b6:300:2b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Tue, 10 Aug
 2021 11:27:14 +0000
Received: from CO1PR11MB5124.namprd11.prod.outlook.com
 ([fe80::d931:b147:2641:44ad]) by CO1PR11MB5124.namprd11.prod.outlook.com
 ([fe80::d931:b147:2641:44ad%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 11:27:13 +0000
From:   "Zavras, Alexios" <alexios.zavras@intel.com>
To:     Nicky Chorley <ndchorley@gmail.com>
CC:     "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>
Subject: RE: Fwd: scripts/spdxcheck.py's third-party dependencies
Thread-Topic: Fwd: scripts/spdxcheck.py's third-party dependencies
Thread-Index: AQHXgrKZfm9VTK921UKQed82sf/C46tWYS4AgAaf9oCAB+JqAIABNB2AgAaXxQA=
Date:   Tue, 10 Aug 2021 11:27:13 +0000
Message-ID: <CO1PR11MB512471062D0584DB1DBB0DE389F79@CO1PR11MB5124.namprd11.prod.outlook.com>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
 <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
 <YP+sCqNlB2g/srHc@kroah.com>
 <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
 <YQvX4u/H8cV1pAPu@kroah.com> <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
In-Reply-To: <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36c9d246-fe92-435c-5393-08d95bf1cd53
x-ms-traffictypediagnostic: MWHPR11MB1357:
x-microsoft-antispam-prvs: <MWHPR11MB1357B7D84A82F2428CF291F489F79@MWHPR11MB1357.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FdEMRAwfZ+OW+rSuer+OvFAwuFRBBRsJDOyqyxykUSJyMdgTLZSdTRgg10y4CEJy1fWShVH4qvgnqK/CPydm/DluRbgYGbvK22ie0BVqjVyNvnIOc3CrTaaDqYPihYy32txsbJq/VEh3hEQh15SAsM2mg/tfZyzruS2sXHvZ4FzT3d62TUuYsQaBBv9mV0js+9L00Q8moB6enCj7HvGmNqNFAJB81eS8BeKuNvHJYpV4rKByXKSUhEwN9AjZdWm3klPIAjZokP9zloHITVz8l7LGBrwoy1WNekERidLk1DAjvkoXSzqJTcnog0n/3UaSJnZgcCXTvPPbmnmXLagVbvbY9yp8Vt7xbQzR3UzTcU9S3UXF+s/LFpaUl4Pa7CSm5xD9fF0631yXrIz8uy9mZz6t9Diqj+uZWqhXw/4XN7hv8YJvi88y/UCOURzY3G3nUiytqQ8pT+n9UL4mO6MYAw76qPz9mBHUd8mJVHVhOCgkipev7Qieu46oyx+7eL4Gw4Ofd7nDdGW86AucutDfDGMQksqmqVjq4okBbtPM9GjTb61EPU4SgMXFxLtdqgzKPo2ImGDLp2U0D+C3TvE+yBwsI9J4KiWtYScyAVXEvkR+AuY7dQcs/2dkF1GXluj3QvzXQJ6/046RqLJnLVQFZQ2SyAj+uXAcGiLlJq0ZTIiY0N5me+9ob12dpHqQGuMa10v8KvMOVGO3P9QFxaHygg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5124.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(38070700005)(6506007)(53546011)(6916009)(316002)(2906002)(33656002)(26005)(86362001)(5660300002)(55016002)(4326008)(38100700002)(478600001)(7696005)(9686003)(186003)(122000001)(52536014)(76116006)(66946007)(66446008)(64756008)(66476007)(71200400001)(8936002)(66556008)(8676002)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D6jgJaL5Z9agokpQt8610p/xtutxdAtaDwOrSsgz7zzeGn629DdY1fgQLD+o?=
 =?us-ascii?Q?NWooaRnnagWe7sZAg/TWWcMbEfPon7npsMy1gqnuaXlGIpSJLlNU8mn+x4nF?=
 =?us-ascii?Q?gnHcFCrHGrbkav2dFdcHb/O6G6LjONlz5HYCQObtFwOexdX3PWGJMMKo/8bQ?=
 =?us-ascii?Q?dVueJwASQSvLrb5fVAeFa8axLqfAtPn2q1rExxaQwC75HzuSiAirOk/iJ2Qo?=
 =?us-ascii?Q?eEth3pQyJjh2u63LGGMB/ABp2yZfZMAVttvNwaz+F2ACXmvZUiBxw2BrUSeR?=
 =?us-ascii?Q?ZBkI06MMmUKBFS3499O6RiVm+xF4hTb5TJ8X5y3XpMOqwhwlv7Qtp2aESVyk?=
 =?us-ascii?Q?WaNEQYPs6x9M2SmKxzPCa3CkDpZNnFDvf356MUOx6/c3Mcuan3wguR3aOGMN?=
 =?us-ascii?Q?Zi/fGdKLUvXJjD2cbH3zQWk6XCaYaonqfc8XevJFPS+A2BW28P1DY/eyKRQ6?=
 =?us-ascii?Q?hYA8pLFSssupap8xLbAaqocpZ3n/5yiByv0wjQaXGCSnXvdOjvVQogRfwjef?=
 =?us-ascii?Q?jnzkI+e8lLeKPANUpQstYCqLre8cZEtBb5rCH9Nug1dTSCxsQvcl05VTp3sr?=
 =?us-ascii?Q?mSPgyDGSbxWMlF4V3wnNwDck3xOV2nOQtChPlktqj7+I2mJRIxVdVrwLeCc7?=
 =?us-ascii?Q?oIIrTZg9ER5euDWPdL3ORoFquPNtqNwLnVCzmRZftakaGUrF7ihLFARjA3Rp?=
 =?us-ascii?Q?J2TbDZxJsMnZzNyJla074r64CpvOax7S0BHTpkbsY2RbnQZH/zep9/M9Fr7D?=
 =?us-ascii?Q?z0h1YqabNlubshGNHkuR1D73KkuED7aybA6NMzlMlmbdhSeCLND9BG4Dt3/X?=
 =?us-ascii?Q?Aofnaopuqq6GnjBcAwbZxXi0zHPK4oGoC5GFMK5zjZyRFbF4MqNRUHlFWJrQ?=
 =?us-ascii?Q?FTbsF3w1gmjHJAjEjlOQtVEaV8pngKdLmRoMs2BjzWSt/D54szEdtl5dotnN?=
 =?us-ascii?Q?ON0E467arPMybSqxhh0Rp11g3mDBtXmfFa0DNIu1YBOMHT9lbHacuBJ83pCx?=
 =?us-ascii?Q?28JO2UlU2bwJFEHfKDSNgprm2GpBpR6jiUeewMMBzOY/QG83RVKERDcEhTDX?=
 =?us-ascii?Q?MADPVIvPHIHENa5NJ3w1jOxQ2v39p2U9yr0zP0aHo677yDSn6lpxeBTFQtai?=
 =?us-ascii?Q?R962aGlLAvsmRsBQoC3QXjgz4XgWezAxKriZPjbz01ONBZIyS/fXpPVQ2pWa?=
 =?us-ascii?Q?dSLjIB5+r1i3tVI6MvzJvoXhALIlp7j0xuEa3VQQK3sDog7/iP6GNpq6HG70?=
 =?us-ascii?Q?eGd5iAuohcBgyKlbJefs43Mp8Ty3JORmhV+/J71dtmxiKeTplE4NWGHBi2yE?=
 =?us-ascii?Q?u6HHU3WGi6J+OSGmbyKIQCHS?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5124.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36c9d246-fe92-435c-5393-08d95bf1cd53
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 11:27:13.8965
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yxXgjJkGI0W6WzJp9iVVged4AERqbapeOy81wC5jgq+dCvt00hIahEpeqxpalJ6cOycDHknkAJcwS+zJlGCTX5EP/SSkox9/J0Rzzx/t6N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1357
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Wouldn't the instructions be better if they were simply saying
``pip install ply git``
(or whatever), so no extra requirements file is needed?

-- zvr

-----Original Message-----
From: Nicky Chorley <ndchorley@gmail.com> =

Sent: Friday, 6 August, 2021 08:45
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Nicky Chorley <ndchorley@gmail.com>; linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies

On Thu, 5 Aug 2021, Greg KH wrote:

> But we do not use pip to do kernel builds, so what is this going to =

> help with?

It's just about making people's lives easier for running the spdxcheck.py s=
cript - not everyone will have the third-party libraries installed, so list=
ing them means they can be installed easily. For example:

diff --git a/scripts/README.spdxcheck b/scripts/README.spdxcheck new file m=
ode 100644 index 000000000000..80bb6308e5c5
--- /dev/null
+++ b/scripts/README.spdxcheck
@@ -0,0 +1,6 @@
+The script spdxcheck.py requires installation of some third party =

+libraries. These are listed in ``requirements-spdxcheck.txt`` and can =

+be installed with
+
+``pip install -r requirements-spdxcheck.txt``
+
diff --git a/scripts/requirements-spdxcheck.txt b/scripts/requirements-spdx=
check.txt
new file mode 100644
index 000000000000..9a4633040897
--- /dev/null
+++ b/scripts/requirements-spdxcheck.txt
@@ -0,0 +1,3 @@
+ply
+GitPython
+

I'll reformat as a proper patch with any changes if this is useful.

Best,

Nicky
Intel Deutschland GmbH
Registered Address: Am Campeon 10, 85579 Neubiberg, Germany
Tel: +49 89 99 8853-0, www.intel.de <http://www.intel.de>
Managing Directors: Christin Eisenschmid, Sharon Heck, Tiffany Doon Silva  =

Chairperson of the Supervisory Board: Nicole Lau
Registered Office: Munich
Commercial Register: Amtsgericht Muenchen HRB 186928

