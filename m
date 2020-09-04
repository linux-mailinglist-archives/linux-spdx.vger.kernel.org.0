Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0988A25D3AC
	for <lists+linux-spdx@lfdr.de>; Fri,  4 Sep 2020 10:31:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726655AbgIDIbC (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 4 Sep 2020 04:31:02 -0400
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]:19100 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726575AbgIDIbB (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 4 Sep 2020 04:31:01 -0400
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
        by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0848UT5V014040;
        Fri, 4 Sep 2020 01:30:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0220;
 bh=yXwpWeCV5eWCKMhX7dzO3g3B8kDOQsu4DKhnZuBR76k=;
 b=O5sahU79xWvKdCKESiBZWL0B/yb6wG1iHJ0dnwe4SqUVOT6g+4Ipdm+xsvGg7KpqEeOq
 33BbMab2kXsdgLZRkljI7yIbWP6omy7fz1Wp5tDE2sLmzXvkI5iNocn+jAwwY0LK3tRx
 9Ws0HF56N3XJ6xTsMuFfRseBU1mfLCRBrZjEElYhX5gxNuOomU96oCvq/mdpZzuv7DWo
 sPj2YsBGQ2sqm7k2yCWw0lwIUmLYl8nzNypDgELasCX8zji4TkGsWMfDzmhLfOzx2kvc
 mY4tXWtWjDezJSknpoEjIKM0GhNxPUDoa5Gzwwi9E/moe7Vr81m2wjqGoLd0uKzs6THV Cw== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
        by mx0a-0016f401.pphosted.com with ESMTP id 337mcqsnav-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Fri, 04 Sep 2020 01:30:48 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 4 Sep
 2020 01:30:47 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 4 Sep
 2020 01:30:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 4 Sep 2020 01:30:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kC0UOHj9aKz/3VR9OUmu5+RZI4h8mcJeZSKHxpC1SoxehuWghN107C2+hoH+yxdRKH/NQAFjwhhXlGNLcez3QcpGudJQQoL0seBfcnE+KVzQ9k1MjoQR96qPlZOpRxJdln0LdOKcA6S0My61CClchb3fQNwmxSs2ADuXSBSCV+nYdnZi2c3Tzny+dgl58BdNjOGZhH4LMFLUSP4XGUPkEPYWPklEI1I6JKIXZDKhHSQ2f5xWlvfZMqjWici4BHQrf5jqojO+gOpJJ0tsC5opAvPK/m4hyBfO2t7uZBFOJPusQn0FhULg4vRCW0QwPUyDkdX7efGKSpWwU2Mhets2Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXwpWeCV5eWCKMhX7dzO3g3B8kDOQsu4DKhnZuBR76k=;
 b=fvshIn+uJ5+Mzk3E/E9tCd8DKg8J0iEEiHKUlS4BUJ2aRZij57oRZwYgFPR5fysf+M/AItuEPmgK+0Z4+Z5rNCCdmrZwl7hdPFhf1vGG65mMiXk+KmEdgT0Qz1qYpl4pksqZz/tTl1jBVjwHJuIP7xGgvR2tasNqZ+OnT+RYjubOg1WUM3Ita8dVT9Om2CmbL37fZhOtS//b0MZIHChvLF6UOd43zKrspsQTiuf+EhI9QPY0nUpO1ojGP6HjDfLED2b8EfkrqdQZAHqoPX6JN6sXKBjrTpaZyV+Qmf3rcEZ641fDneNdqBE2YBUZeMuHN5Vn7yA/fG1ZTHEB6bs/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXwpWeCV5eWCKMhX7dzO3g3B8kDOQsu4DKhnZuBR76k=;
 b=GdHy3njmUSaQk92o4QOva7Fz0/Zi+cHfb44nQu+8mxlMPAoGrA3ccNpiPcFtGydnoI0HQ+i01kJDxhxAJNdVwC17plFyY6+odJqRG0jRoo36MeZ2O3jQAuaJKO8zjIaNRyuQJnpcqG1r+AhCBRtc5vs9VHrrWj4+2z3xZs/v7jo=
Received: from CY4PR1801MB1816.namprd18.prod.outlook.com
 (2603:10b6:910:7f::33) by CY4PR18MB0920.namprd18.prod.outlook.com
 (2603:10b6:903:a6::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Fri, 4 Sep
 2020 08:30:45 +0000
Received: from CY4PR1801MB1816.namprd18.prod.outlook.com
 ([fe80::5f0:b1ec:580e:cb4b]) by CY4PR1801MB1816.namprd18.prod.outlook.com
 ([fe80::5f0:b1ec:580e:cb4b%7]) with mapi id 15.20.3305.025; Fri, 4 Sep 2020
 08:30:45 +0000
From:   Igor Russkikh <irusskikh@marvell.com>
To:     Nilesh Javali <njavali@marvell.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        "qla2xxx-upstream@qlogic.com" <qla2xxx-upstream@qlogic.com>,
        "QLogic-Storage-Upstream@qlogic.com" 
        <QLogic-Storage-Upstream@qlogic.com>,
        GR-Linux-NIC-Dev <GR-Linux-NIC-Dev@marvell.com>,
        Shahed Shaikh <shshaikh@marvell.com>,
        "Manish Chopra" <manishc@marvell.com>
CC:     "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [EXT] SECOND REMINDER on Qlogic driver license conversion
Thread-Topic: [EXT] SECOND REMINDER on Qlogic driver license conversion
Thread-Index: AQHWfDdmPu1uZg3ov0SYqphbqCKlialSIj8AgAYOdNA=
Date:   Fri, 4 Sep 2020 08:30:45 +0000
Message-ID: <CY4PR1801MB18167C61EFC52359D421A683B72D0@CY4PR1801MB1816.namprd18.prod.outlook.com>
References: <alpine.DEB.2.21.2008270740140.31123@felia>
 <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com>
In-Reply-To: <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [82.208.115.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6f3e0e6-21ca-47a8-c550-08d850acd188
x-ms-traffictypediagnostic: CY4PR18MB0920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR18MB09209967D80A3171AAA93243B72D0@CY4PR18MB0920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bxblfyAz8DWhU+3I0ls1m7VPQE1tMKtowPJktOLQdFUEnEZ4wute8otSzXg6VJ/j3q5hTU+yIYKgtjhKJ8M277VxIZVkrVOSnMGDBVccvyfxKAZDJ+5KOdYVnRI03cCs0yQOphYwuc9XLHgXzzucd4lGpM4co4S4o1N2uBjmzhBKOy3mLVhuiLB8aF/h3g+zvxKkXBrfjEjvfqN15UyMjGELFDNTHcnK6LenQYV+TjtGRl0g8iixBIAtwt0DAnayzMOlaOuqla7gw4j39Jo8joxOjJ/Tj34e87hEQbeGj5PRF1RRRzUvaUM0Nx3EL2wkEa0YzKlyJZifvjEwjBkKxRMhOtbEz6zQYlTixmKfPL6kjaE2zatbaISbUxshYCQVir06YSMtcEspcFAhqE8EKA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR1801MB1816.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(71200400001)(966005)(26005)(186003)(8936002)(52536014)(33656002)(8676002)(6636002)(55016002)(316002)(6506007)(9686003)(7696005)(2906002)(76116006)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(4326008)(478600001)(54906003)(110136005)(86362001)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: E45hQE+0WspEdc7yriYwgHbS9JoEqtbSygRs52ViUGpCNrQU+m+9JvBHy/qel6vUkVJQJztvU1uY3QjsTwXo3thhn9fx9j4+h9+9EqxtIqRdazz72wXgcwGb3DA5R+lVZMoE6jiZCVfW4UicFhevWIKUODH1jpEMMRE4KURxMyyOqY6QC7MbUg/Pun6CWJmaumtD5CygVPvMcjpsPLj3Bn2IMA6eHYSOVL6Jd7wUeqpt818kRXGmOsxbHUyBKfP/ji8TQqlQ+Bjb5o4tbkcOcZv0+n5UyaUqhviX79uK+BaB+oAOKgx4nXqxoOv72i036DYHZ9ODovjGBMuJmrdtLBaAE/8EEuImY909NLLDZtpgkusFbYC/zVcNqwyf0wxX4Wt289AwgwvdaMGSJtZA/nrhnHtDJY9CE/q6RsKJqWI+XZDQO7kGYT3iQKQ4DIzeCt+84HKrOD9y1DPtISSxhehOvjsszsfhr5CoJaVvcVo0A429cCX+aEpemaBVaq9Ve9PzAi2uAbCcfZWOjXXQbVGC88McMC5qcpOZHp6qxCLBsNqwNeLb2KGqZiRa4PIboLwopqr9YGvKDLnEqkutgI4D6NqnXXnH39B9b/OZ7N9jhDaBNJx5GlbUxX1/MZmr2D4EkYdGyi6N7g3xK2JYsQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1801MB1816.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f3e0e6-21ca-47a8-c550-08d850acd188
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2020 08:30:45.0685
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YiX82UAGmaEZjKdo3Dn1Zn2iPwt6KZfyFdE20pV0D3sG7UA/n30ZV4PV2QyCurFOQsb2U370EN9ccC/CQfL/Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB0920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-04_05:2020-09-04,2020-09-04 signatures=0
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Hi Lukas!

Sorry for the delay, my team is still responsible for maintenance of these =
ethernet drivers: qla3xxx and qlcnic.

The changes are quite natural, we already did similar spdx fixes on our cur=
rent family of qed* drivers.

So here is my ACK for changes of these drivers license files.

> networking/device_drivers/qlogic/LICENSE.qla3xxx |   46 ---
> networking/device_drivers/qlogic/LICENSE.qlcnic  |  288 -----------------=
-----

Acked-by: Igor Russkikh <irusskikh@marvell.com>

Do you want me to also reply to that original thread from Thomas?

Thanks,
   Igor

> > Dear Qlogic driver maintainers, dear Nilesh, deat Shahed, dear Manish,
> >
> >
> > during an unrelated kernel clean-up task, I noticed some LICENSE files
> > for the qlogic drivers hanging around in Documentation.
> >
> > Thomas Gleixner has provided you a patch series in June 2019 to pick
> > up or simply add a Reviewed-by tag here:
> >
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> > 3A__lore.kernel.org_linux-2Dspdx_20190606205526.447558989-
> > 40linutronix.de&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHI
> > ZL7SV63sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--IeEz_uofF2-
> > lqWqCoV1U6yEtg&s=3DOft-T7CPXkIIPZqFYNlsWYYITwxxpz-LHyGtyVFH5qU&e=3D
> >
> > As it seems from the public mailing list archive, you have never
> > responded to Thomas' request. If you could indicate that the change is
> > fine for you, I am happy to rebase the patch series to the current
> > next tree, so that Thomas can pick that up and let it travel through
> > the spdx tree to Linus for the next release.
> >
> > See first reminder here:
> >
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> > 3A__lore.kernel.org_linux-2Dspdx_alpine.DEB.2.21.2006300644130.4919-
> > 40felia_&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHIZL7SV63
> > sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--IeEz_uofF2-
> > lqWqCoV1U6yEtg&s=3DdwiuCg_O0vw8Zcy8WMO2ZMMEvlk04Ks_nkY-
> > R_ltRZ8&e=3D
> >
> > Just to let you know, I will send a third reminder in a few months,
> > and if there is no response to that, I will just send a patch to mark
> > those drivers where QLogic-Storage-Upstream@qlogic.com or
> > GR-Linux-NIC-Dev@marvell.com are maintainers as Orphaned, just to keep
> > MAINTAINERS reflect the actual state.


