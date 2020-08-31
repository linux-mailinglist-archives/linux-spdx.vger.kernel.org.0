Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FAFE2578C0
	for <lists+linux-spdx@lfdr.de>; Mon, 31 Aug 2020 13:54:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727019AbgHaLxx (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 31 Aug 2020 07:53:53 -0400
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173]:47086 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726726AbgHaLxp (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>);
        Mon, 31 Aug 2020 07:53:45 -0400
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
        by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07VBl7Ns005615;
        Mon, 31 Aug 2020 04:53:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0220;
 bh=8rwHiXd1JKSpgQmu3/rOUIehf4SaeZ2m4CKxRsTMKoE=;
 b=epoFeYF8sLJjduC+i8xyslXHRICA3aEry/PL6xJfKC4MWrm8au0iSSjpQOXeiLEcGkMJ
 +Jc4jCEPB79TMXO6EpcSPpWA/paSlXa7NcHVNTB6D5V2BnR2VJYsJcF4E+ZWZf76eXXt
 gq2jGZV+aPHMTN3UYNbXsr//L6ThUuTHGbW59pHFFgTBopVBb5H+L3fW1jNItw2l5RFH
 rWK6gOlOYZ+/EwX1qOiO7PDQV6dqKpOOPd99HH0RG04pMCYP3BUkgi+QCsuXaPAEMKVh
 do6RF4lImnB7oqZmd3HdEK42wPdlSFuLGcZE+Z7g97T951z7j6BQOgJYqLiLk85/a4sy rQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
        by mx0b-0016f401.pphosted.com with ESMTP id 337phprxu1-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Mon, 31 Aug 2020 04:53:33 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 31 Aug
 2020 04:53:31 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 31 Aug
 2020 04:53:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 31 Aug 2020 04:53:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1g9Om5SYAjGgGfKScoDKcgS/czC6bL1brbGXSJ0C5uwCyiXLVWW9aC7kMc3Btz28ZCau0We0uzdxBEUamtryyyjJ5A/0m2OX69y2R6qJM1L1ifBrq3TSG7GscJuKnsPFOBKL1y302USTSNEP6mDarVNqbw2ah0gxO4SfvY/grwNHtgvcSLLkOietOVA6potGmpKDLHPekBn0IumIUevWiVQcABufNUMLaNUiL5liQ+Pv50UnrYN2s1wnOzgdp07nYVIyBfbKfeSzQuNstTsOU0xL93oGVFqRBnmSERsrVEkXxOGf163T+uOzOWpWVNUQXNP4P4spQ7cgxT/nNLbhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8rwHiXd1JKSpgQmu3/rOUIehf4SaeZ2m4CKxRsTMKoE=;
 b=XF+v9U6K7EJRe6jw+G24mSjq3TW3k7rNMJOZZ3z+0aZAtlrCCGjr0p8IOUe/IN8jPlu5gvsL/uUcgLqErj1lcL2oeYz1xh5Y/0cWbf2aFpU1mMt64asjt9YTFLKNkU7KWepaF2nUKT0IbAPtt/60FZXgEFKzI6yGSp0mQtXoy0l/dGAPMmvSEBhTRP8khBPlESpkxXn+tMXkaWB9e5zYutsKEf3F8j7e5hpYJ7Xif5nGOF36qFPaop955wjFSbOZEHRzl8uAg9GFzp0/Ijn+tOvly8pz0j/mk5YpCJbz7UV9SKDtg9uN8Bq/eKCzYBvZlFRcKXGj1/ggvv8iHniasQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8rwHiXd1JKSpgQmu3/rOUIehf4SaeZ2m4CKxRsTMKoE=;
 b=t7kbo/0fZVLhvbeiC1zyT6Fn9b2nXJF/BfIqCaosXK+JGg75LoKfYk9qEh4CattbGnXFWEEbFq1KGQjH4QdQhF/hoBvMjT4TTnux2A+oLDf4Sjbc6+qQPETG8Rk30wdM5ENwNFoybynNAbID85t5K6Up2xHViHRRC/yOsnfgJNw=
Received: from DM6PR18MB3052.namprd18.prod.outlook.com (2603:10b6:5:167::19)
 by DM5PR18MB1466.namprd18.prod.outlook.com (2603:10b6:3:b4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.25; Mon, 31 Aug
 2020 11:53:29 +0000
Received: from DM6PR18MB3052.namprd18.prod.outlook.com
 ([fe80::905a:ebb4:369c:ae1b]) by DM6PR18MB3052.namprd18.prod.outlook.com
 ([fe80::905a:ebb4:369c:ae1b%7]) with mapi id 15.20.3326.025; Mon, 31 Aug 2020
 11:53:29 +0000
From:   Nilesh Javali <njavali@marvell.com>
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>,
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
Thread-Index: AQHWfDdhvf7T0GsurUubJxyhckTMRqlSIcKQ
Date:   Mon, 31 Aug 2020 11:53:28 +0000
Message-ID: <DM6PR18MB30524C8D1F431EC8316C4051AF510@DM6PR18MB3052.namprd18.prod.outlook.com>
References: <alpine.DEB.2.21.2008270740140.31123@felia>
In-Reply-To: <alpine.DEB.2.21.2008270740140.31123@felia>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [59.90.36.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 065f9041-ec2a-4fb5-8f2b-08d84da47a0d
x-ms-traffictypediagnostic: DM5PR18MB1466:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB1466D8E88048B700EAF41C97AF510@DM5PR18MB1466.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HLXynetNIsl6zaV2VNDuJivBLbyZx3w1p6pgCHmEz8k99hxaWN0ucuDDj8U0dtrjTTOCmvnSuvKVvAR+kK9ZbnZD8JgRAX3aILD3o8i5SPhgDpYQ2Svvo4kx+jejX8slarVAmwaZ3TadONEWBjl7SkDNdWBLKorLB3EaWRnQZPobasNe+0fceFBVKUKxGYtZpcADDgRB5u7p17HUFn3V/+uDY1O1eMkg3LIUl4JboeGSWX7CJomoSrIhQH1S9wgsZV7R0oqRP6XqfaEl4YKP3tNCa3S2ECzTKWXarezSBvMnbyaj4qz4w98sQqFKWibvuzBU0iphNec90GS5BEn9hV85w7L8R3+Cu83XUmILtAftE5AFCjoGhzGypNv3ZLLWyioRgyRAOv+yWauwFCBPfQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR18MB3052.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(396003)(366004)(346002)(39850400004)(186003)(4326008)(26005)(54906003)(55016002)(53546011)(6506007)(66476007)(76116006)(86362001)(64756008)(66556008)(66946007)(66446008)(33656002)(7696005)(110136005)(9686003)(52536014)(6636002)(2906002)(316002)(5660300002)(83380400001)(8676002)(966005)(8936002)(478600001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: aS0/kqzTXyAVYN5MGdYNleXyrikDaF8ZnXEJE3QP78UiBpcUPIF4yDi9oEU4BoDmaiAjtzK2P+X1ahgTJJyohYugre9aOUaexZ9nMBrJ/fJlzvbr8Y+7FRRr9On022mYCCCUP3lvJV8cbtZHhAa9Y8/7QQGVFz5rHoI0HmQD4IWzWo/0arclhonIN/4N7xa/IA/J4pfqkf3SDTq4/6jJyZokVOE9+Hfhw4rz9+8xRkrvhlkUAy5+Xl0Ywu+va5Hdb4wLCwn+pnjRCraCv2CvaWsUjpswSM6uzeIjpPnbiwwbSvAVaWequZRO0nc/10JFxknS7Sgn8K8U2ZA1ICUE44aHWlCO+ocQqQAA5tGODheyHC4l8RDvwkWEvX+2mwaGLdBDb2eRYmsCdDfgCR5T4E8TCI4dhBFbiMZqbfb4FH+2VVYH57mjVE/nrnFkEwTHy+55/Og8d/z9HaHA7J9A2pIszE8htWZukumR5MT0N2qBJPG/2olEsoh/wizF14YxT8tCjt5izzW5/aFCMxpVG1NLzMVWEbhhzW5oZR69S1VOdlDgpxuNCDXIpieimIks3yi/4rkMUmXbsjeyusf+pQWn7fR2LC95+aVgKEf7UZB3aUCiBbE6JiFTdL4/MseoiFzsD9VM01NUCPcGhwlSOQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR18MB3052.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065f9041-ec2a-4fb5-8f2b-08d84da47a0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2020 11:53:29.0339
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r85PNPjCD23AN+fjT46klQp1uBu2ZwR4j6tgaWc56JAap2psQ/4hcuQlE429/NIGbdfMhCMzjzv4WSihSdmoPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1466
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-31_04:2020-08-31,2020-08-31 signatures=0
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Lukas,

We have taken note of the comments and seeking opinion from our internal Le=
gal team and will revert accordingly.

Thanks,
Nilesh

> -----Original Message-----
> From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Sent: Thursday, August 27, 2020 11:30 AM
> To: qla2xxx-upstream@qlogic.com; QLogic-Storage-Upstream@qlogic.com;
> GR-Linux-NIC-Dev <GR-Linux-NIC-Dev@marvell.com>; Nilesh Javali
> <njavali@marvell.com>; Shahed Shaikh <shshaikh@marvell.com>; Manish
> Chopra <manishc@marvell.com>
> Cc: linux-spdx@vger.kernel.org; Thomas Gleixner <tglx@linutronix.de>
> Subject: [EXT] SECOND REMINDER on Qlogic driver license conversion
>=20
> External Email
>=20
> ----------------------------------------------------------------------
> Dear Qlogic driver maintainers, dear Nilesh, deat Shahed, dear Manish,
>=20
>=20
> during an unrelated kernel clean-up task, I noticed some LICENSE files fo=
r
> the qlogic drivers hanging around in Documentation.
>=20
> Thomas Gleixner has provided you a patch series in June 2019 to pick up o=
r
> simply add a Reviewed-by tag here:
>=20
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__lore.kernel.org_linux-2Dspdx_20190606205526.447558989-
> 40linutronix.de&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHI
> ZL7SV63sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--IeEz_uofF2-
> lqWqCoV1U6yEtg&s=3DOft-T7CPXkIIPZqFYNlsWYYITwxxpz-LHyGtyVFH5qU&e=3D
>=20
> As it seems from the public mailing list archive, you have never responde=
d
> to Thomas' request. If you could indicate that the change is fine for you=
,
> I am happy to rebase the patch series to the current next tree, so that
> Thomas can pick that up and let it travel through the spdx tree to Linus
> for the next release.
>=20
> See first reminder here:
>=20
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__lore.kernel.org_linux-2Dspdx_alpine.DEB.2.21.2006300644130.4919-
> 40felia_&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3DFAW9wuzbtHIZL7SV63
> sr8rG59Hctu-eGu0G9pxwOXgQ&m=3D5_ut61ERR7QP6F0C--IeEz_uofF2-
> lqWqCoV1U6yEtg&s=3DdwiuCg_O0vw8Zcy8WMO2ZMMEvlk04Ks_nkY-
> R_ltRZ8&e=3D
>=20
> Just to let you know, I will send a third reminder in a few months, and
> if there is no response to that, I will just send a patch to mark those
> drivers where QLogic-Storage-Upstream@qlogic.com or
> GR-Linux-NIC-Dev@marvell.com are maintainers as Orphaned, just to keep
> MAINTAINERS reflect the actual state.
>=20
>=20
> Best regards,
>=20
> Lukas
