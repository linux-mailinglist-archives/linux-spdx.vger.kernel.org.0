Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F40F92626BA
	for <lists+linux-spdx@lfdr.de>; Wed,  9 Sep 2020 07:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgIIFUI (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 9 Sep 2020 01:20:08 -0400
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173]:65158 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726036AbgIIFUG (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 9 Sep 2020 01:20:06 -0400
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
        by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0895FPPK025583;
        Tue, 8 Sep 2020 22:19:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0220;
 bh=oh270WJgNJ3a5me1kEgXSiqjjeWnzPzt7HiU+Xbw67Q=;
 b=a9NR5V7VKG0ISREuA4Bu4AyiLy8y4QH094t/ENxjr/spax6w4O44tP8o4W9Z15FY0/dp
 WHtIqWqyKFZ2cB4UbcIXFhU5jN6oZaH+OUXT4eNFxbvNI0dAI9RGzrDI9OxBYha5sffj
 lLpabYXv6lw3JrIXv5NqaOgKKF3xvWuzlzAVE7VLV1OadfQ3AUMGBiCZf+HDqMMm7ZKR
 5TGW33vBTiK1SAMESjvnBeOwomNCSk7siKNIUct5fZ3oLv6zOE5HNQWOCOYZoildXqmW
 hxs5RG6W3UPe41eSJS92P27VCueaw8vXOR+BKWHhwKCPTHkhxI2xsDvPEvFaojI7Ha60 uQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
        by mx0b-0016f401.pphosted.com with ESMTP id 33ccvr57p4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Tue, 08 Sep 2020 22:19:52 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 8 Sep
 2020 22:19:51 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 8 Sep
 2020 22:19:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Tue, 8 Sep 2020 22:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbpHaskcgKt8+JFx32zecuDhxc0nfWtTQ+aJ0qRQroWoB0IFOTYBM2nbwWEatUtOYUPVbLfJquV+BO2eArK2xAWABVKwNCXSg+sLToE1MBQq1QpJQ3YBJsc/ndVz8i711BDLLjz4uqcaaXwTikcbpFAeKOCemANDPLUSjFgHucrkX0tBZYP3iwPfsnU9NZVheVp4O19xwBsRRvnpe46W7eQU7Bth4jTBFRlJQIrzlngMHFb15fwqJ8CkWoaUQJxnzf2rFXDqOsY/lOlrJFlCcP+5lzvWdEmVQjAUohAcX05Moq/wIxTUP9nAiQ/vzmtjFrlxwfAbMolb+w8HCIGzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oh270WJgNJ3a5me1kEgXSiqjjeWnzPzt7HiU+Xbw67Q=;
 b=n8XEQKsAj/POjrvRmfxJsnwfyZqc8RVRC22+R2eYJNNEWULYwJjWb++DpmIGFEQrTY205RKNsAYgcILzDYqimaQ4Umx9jo0dQYatv28GuDbLHh7Xhp+ovVXE5X9R1ercFOjd2Yqrvv9hngKIjohgkQZZdmG68hQ+TP5/Xmb27JKw+3M+jY+mYGXZflCdUxB5x7nsTH3J51n9p5TrqGSICB/XnT9o171q8+zCcdlZDcnNygflf+YcQsNaUc6vvZNoN45VRjBCSkhe4zq9NTWEW2nh0HnDYnygdFgYQvNwxKXOXrj8YcBmNi6H44H98x5E+Dt7G5LpQFsqzXhcqvDHzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oh270WJgNJ3a5me1kEgXSiqjjeWnzPzt7HiU+Xbw67Q=;
 b=IrKZJiybCIeYO42IYeD4DbXP3gpZ5X/+AEoyYAbo6LiXnQAdQdv/R1QUBbVvRWCHHKEvpGApNTgDGYpsiTY8L9sZ9hZCOgoFa01zocqqUaE3w7z8RSKc/IgBySqLppW5F7QIx5YEwbCkCpi+ZNoYsbr4dagJAVK9DECS67sIaYw=
Received: from DM6PR18MB3052.namprd18.prod.outlook.com (2603:10b6:5:167::19)
 by DM6PR18MB3668.namprd18.prod.outlook.com (2603:10b6:5:2af::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Wed, 9 Sep
 2020 05:19:48 +0000
Received: from DM6PR18MB3052.namprd18.prod.outlook.com
 ([fe80::905a:ebb4:369c:ae1b]) by DM6PR18MB3052.namprd18.prod.outlook.com
 ([fe80::905a:ebb4:369c:ae1b%7]) with mapi id 15.20.3348.019; Wed, 9 Sep 2020
 05:19:48 +0000
From:   Nilesh Javali <njavali@marvell.com>
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        GR-QLogic-Storage-Upstream <GR-QLogic-Storage-Upstream@marvell.com>,
        GR-Linux-NIC-Dev <GR-Linux-NIC-Dev@marvell.com>,
        Shahed Shaikh <shshaikh@marvell.com>,
        "Manish Chopra" <manishc@marvell.com>
CC:     "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [EXT] SECOND REMINDER on Qlogic driver license conversion
Thread-Topic: [EXT] SECOND REMINDER on Qlogic driver license conversion
Thread-Index: AQHWfDdhvf7T0GsurUubJxyhckTMRqlSIcKQgA2yruA=
Date:   Wed, 9 Sep 2020 05:19:47 +0000
Message-ID: <DM6PR18MB305281D28830537F81914796AF260@DM6PR18MB3052.namprd18.prod.outlook.com>
References: <alpine.DEB.2.21.2008270740140.31123@felia>
 <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com>
In-Reply-To: <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [117.220.251.152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b475e78a-9413-4295-9fda-08d8547ff898
x-ms-traffictypediagnostic: DM6PR18MB3668:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR18MB3668EED4B43C951C682CBDAEAF260@DM6PR18MB3668.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O7fOPN1fWB4nDOCkVAzd0Us3U3EJBonxT9gbNXEMmhC8Do3qsKgB9AAAW8492xDAnYeACvlvqFs02RpsnPjFaQex+Nfzufb5xegq3oN/ZgVkMhJSaxzu4+8C/4jNTlCnemG9PBWXeaOZs2948Z3MF5lX2wHgK/jjc4eCgbyODB1ETn6BTkHhR58bwFdFl8BHZnVmvSDnfuWvl/X18U6mDB4iHZeOkGDkCYo06NOjP28SOLS7PI1IO7fY/z2XtXgqvBnCFkhXvz6BmANJ25zGSI6Q3m3sMy3G6igw1VLkEcPs+HQjjnF7QM/kk6Kl8Y4WVvOLKB+sAFoDSZfvp6qrlqv8UCeu7HgOAazf0NLucU7j3sWvcN/P2SME2gGu9vGL79L+6/b4gaFFqrqlVYKUrw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR18MB3052.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(376002)(366004)(136003)(396003)(26005)(66946007)(66476007)(76116006)(64756008)(66446008)(66556008)(8936002)(83380400001)(966005)(33656002)(5660300002)(71200400001)(52536014)(7696005)(316002)(53546011)(6506007)(6636002)(186003)(2906002)(9686003)(4326008)(55016002)(8676002)(478600001)(54906003)(86362001)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: K4hy1k6pioAo/1mLmEapR+a/44lFw8U+dcCqChSBbaD6ilHKmrcV2XOuBDb/TeSseEAvo7QtTGqHrhtUIjYNoywVAP+31FoxFIfKEs2L0A6vHO8PWahNoEZSXwKMK+9oOiXfkr5Q3BeP5AnhaimbRinvNPo4dNRpOH76z/ud5NoHADJOfpZnFCGcrWMpm/ZSUbh9VjWQ6/VuiZ2ARFlH1QgqWJFO2dwqqK6RZia0MirV+Org307inItHCfv+7+5MfJn4xD36zJk5nBfmZr1+3UkmXZscnNMR1WUHBdvWMKQ34WWx0vtF9r9/UYhM65SPo0sdn3VFd0OZOhjP7Y0hWXiVzLQIhcqBed22pgl2e0dRGTf4p2/fIi2Unmphrl1ZFVdE8B0dnwGP9GlsCKt7KMeIrjLf95sQPE4hVWB1pvTEGuojFe8Ofn9lDdn5EFyIgEsKVdja4rKvqorphW4s4ZH1kv+dhpbGMdUsIoa/SRnflJgp3JZ722vcli6uH80VZ7jYhf/VvvuEOiajy0EvEL2bAYGgYQ+ypqWHNIbUatfkbUWacN6kyGjF1jKsBXf8FPRoY0EfF6CPWwJRayfkmAQU/hlW2RNz3/JHAysxiRs2xzcTm2QRGHIWOVHWWSAz+OhJN8x4ZpkOO+dE0G0nMQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR18MB3052.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b475e78a-9413-4295-9fda-08d8547ff898
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2020 05:19:47.9417
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NNpT5alII1QUuiTH0U/a9LhhjiQVEUjpxAUwnIxAwlmeKleZGhoT6rdyA4HN/cID0nN/1UV2YB0Lj4ID2DEDgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB3668
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-09_03:2020-09-08,2020-09-09 signatures=0
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Lukas, Thomas,

We have got green signal from our internal legal and would like to give ACK=
 for qla2xxx and qla4xxx driver license conversion.

Acked-by: Nilesh Javali <njavali@marvell.com>


> -----Original Message-----
> From: Nilesh Javali
> Sent: Monday, August 31, 2020 5:23 PM
> To: Lukas Bulwahn <lukas.bulwahn@gmail.com>; qla2xxx-
> upstream@qlogic.com; QLogic-Storage-Upstream@qlogic.com; GR-Linux-
> NIC-Dev <GR-Linux-NIC-Dev@marvell.com>; Shahed Shaikh
> <shshaikh@marvell.com>; Manish Chopra <manishc@marvell.com>
> Cc: linux-spdx@vger.kernel.org; Thomas Gleixner <tglx@linutronix.de>
> Subject: RE: [EXT] SECOND REMINDER on Qlogic driver license conversion
>=20
> Lukas,
>=20
> We have taken note of the comments and seeking opinion from our internal
> Legal team and will revert accordingly.
>=20
> Thanks,
> Nilesh
>=20
> > -----Original Message-----
> > From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > Sent: Thursday, August 27, 2020 11:30 AM
> > To: qla2xxx-upstream@qlogic.com; QLogic-Storage-Upstream@qlogic.com;
> > GR-Linux-NIC-Dev <GR-Linux-NIC-Dev@marvell.com>; Nilesh Javali
> > <njavali@marvell.com>; Shahed Shaikh <shshaikh@marvell.com>; Manish
> > Chopra <manishc@marvell.com>
> > Cc: linux-spdx@vger.kernel.org; Thomas Gleixner <tglx@linutronix.de>
> > Subject: [EXT] SECOND REMINDER on Qlogic driver license conversion
> >
> > External Email
> >
> > ----------------------------------------------------------------------
> > Dear Qlogic driver maintainers, dear Nilesh, deat Shahed, dear Manish,
> >
> >
> > during an unrelated kernel clean-up task, I noticed some LICENSE files =
for
> > the qlogic drivers hanging around in Documentation.
> >
> > Thomas Gleixner has provided you a patch series in June 2019 to pick up=
 or
> > simply add a Reviewed-by tag here:
> >
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> > 3A__lore.kernel.org_linux-2Dspdx_20190606205526.447558989-
> >
> 40linutronix.de&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHI
> > ZL7SV63sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--
> IeEz_uofF2-
> > lqWqCoV1U6yEtg&s=3DOft-T7CPXkIIPZqFYNlsWYYITwxxpz-LHyGtyVFH5qU&e=3D
> >
> > As it seems from the public mailing list archive, you have never respon=
ded
> > to Thomas' request. If you could indicate that the change is fine for y=
ou,
> > I am happy to rebase the patch series to the current next tree, so that
> > Thomas can pick that up and let it travel through the spdx tree to Linu=
s
> > for the next release.
> >
> > See first reminder here:
> >
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> > 3A__lore.kernel.org_linux-2Dspdx_alpine.DEB.2.21.2006300644130.4919-
> >
> 40felia_&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHIZL7SV63
> > sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--IeEz_uofF2-
> > lqWqCoV1U6yEtg&s=3DdwiuCg_O0vw8Zcy8WMO2ZMMEvlk04Ks_nkY-
> > R_ltRZ8&e=3D
> >
> > Just to let you know, I will send a third reminder in a few months, and
> > if there is no response to that, I will just send a patch to mark those
> > drivers where QLogic-Storage-Upstream@qlogic.com or
> > GR-Linux-NIC-Dev@marvell.com are maintainers as Orphaned, just to keep
> > MAINTAINERS reflect the actual state.
> >
> >
> > Best regards,
> >
> > Lukas
