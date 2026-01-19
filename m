Return-Path: <linux-spdx+bounces-132-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EBDD3B772
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 20:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 01EEA301DE2E
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 19:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2E572E0910;
	Mon, 19 Jan 2026 19:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b="BE8myQaE"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mx07-001d1705.pphosted.com (mx07-001d1705.pphosted.com [185.132.183.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE9C2DE6FA;
	Mon, 19 Jan 2026 19:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=185.132.183.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768851772; cv=fail; b=Gwf6RCqOdONR0Ar+smyuDdxBCZTVwT7OU5MxMRveG2XDyj0LwNXkI9r8OgxfklWrMp6lfc3xdlPunJZKhrvLyQJwzONEJeuqlQXTfsr1Z/9NZOT5qmPyjaqPz0L125lqnqpOZfSg+ns+qB+BveKK8yi4Y2UhAmfGHGWVhtj/ryE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768851772; c=relaxed/simple;
	bh=BCcHG34iV7TZNzOw2AXUzG3uaVbBIqdwUokKXHFLde0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=I0sF+agLKtd3+zTYyPUZjTwcgVTgZxpZ74rsIcNmYcB5O6209yHeeBzDN6FWVxxB2iSow0t+jrgtKcKt3YAg92aCBIudbr0FlwxTSsOYGACqeU/8+p7d2V2Zie4gRMndAHV9PGlq+IBVNjh8EdFXD37vJlphVX6rxT1UIIXnaxc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com; spf=pass smtp.mailfrom=sony.com; dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b=BE8myQaE; arc=fail smtp.client-ip=185.132.183.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sony.com
Received: from pps.filterd (m0209324.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60JJfxJ4002425;
	Mon, 19 Jan 2026 19:41:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=S1; bh=BCcHG34
	iV7TZNzOw2AXUzG3uaVbBIqdwUokKXHFLde0=; b=BE8myQaEMHjX4oFN4Nm86Yh
	CjdTEf+guK0s0lfqk1RicXB+pBlWHdVr4Yqojge+fUpBdfFNVFR6fA+Fry+Wg3mq
	MtCehiCPr66kBz4x6YiuhZ3udINrjG8GGN3DdbQ0lwcdisApW0Bke0BREVa1xvmh
	fHHWcma4JlDpc5f9Vw8yOCPEf0936X8nitgNfNOQTP7p84TclTSsZecYoxpuLHvt
	U8yaAuvIo9adBGzweND/l9XZjIK4JUGBoq4xnPpiyTs5ij9lnmaLQH3R9IKV0cYz
	9XOLwmhRTMo7cYVQNyr7WGGEW++GHGzOFqfVO5OU7GgS3m3e1J1ImRxKDX4o3og=
	=
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012063.outbound.protection.outlook.com [52.101.53.63])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 4bqyk2k1a2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 19 Jan 2026 19:41:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wSdNlqHpgFsdET6/G9/aUnv4PCW6O0BiFZGr1px7lEDfxoeHefa3IV6nIqFKB89Wf7QbAB96jRXpxAjApLuYhD6+BDl42kjD3YmYp40MzrsvXwYUPSKwIwnmDKyvprjgS4JqsMdSCJYtYkFMbh/wafpgsEWglPgcSWjY6uAIB532JpYCFKC+1sMvhNau0tJjBTLiDP1J81WvbspV69nmSwaV/QncjkYrYXT5VR0/dpDt8ac2Nr7/CpE+Ao462RVfjm4doARqQc3aOtTuTz6qmLkPzdmgggWu6eBzDr3oGIJ8Vdw9qgutwwcQ9UwHdG35+AVXJS6pBqrEe/c0WngvBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BCcHG34iV7TZNzOw2AXUzG3uaVbBIqdwUokKXHFLde0=;
 b=r3DeOrRsdAHMwSjUgznQQG1f8fxTSLNckstaNW2VQ6FIB572Njydn8HD389FKOoLIZDvdrI+ask5b7IR/Ieg34hBVyhLWAr9kyAGoUztuw9qBQSwUgSrd0+uBk1zRxuknzeSp0joAZAEA3zkQ9EhtXRNe3I2bU8RLo8nMYAHEQBwl1J03H//b2RMxlvPMBeHiJViQgiD6nThrJBpBwf9Wojb18I641ZtukEMEJ2CG1nSFzc24i5r3QJCNwxGKetsoOz5AuTj4s/eSBGqtAkLt7qhcfDMmKocBW6I+eUHDQ5CHtF5JX45rYPXRQpo/rGABU86M7FWUs/WjxF1YWS1vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from PH0PR13MB5639.namprd13.prod.outlook.com (2603:10b6:510:12a::14)
 by DS7PR13MB7284.namprd13.prod.outlook.com (2603:10b6:8:262::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 19:41:55 +0000
Received: from PH0PR13MB5639.namprd13.prod.outlook.com
 ([fe80::4213:f165:7017:52a7]) by PH0PR13MB5639.namprd13.prod.outlook.com
 ([fe80::4213:f165:7017:52a7%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 19:41:55 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Rusty Russell <rusty@rustcorp.com.au>,
        "karim@opersys.com"
	<karim@opersys.com>,
        "akpm@linuxfoundation.org" <akpm@linuxfoundation.org>,
        "tglx@kernel.org" <tglx@kernel.org>
CC: "tom.zanussi@linux.intel.com" <tom.zanussi@linux.intel.com>,
        "kernelxing@tencent.com" <kernelxing@tencent.com>,
        "perterz@infradead.org"
	<perterz@infradead.org>,
        "linux-spdx@vger.kernel.org"
	<linux-spdx@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] kernel: add SPDX-License-Identifier lines
Thread-Topic: [PATCH] kernel: add SPDX-License-Identifier lines
Thread-Index: AQHchOaPokSWxyU3MEavyX9bnpP9uLVY/66AgADkinA=
Date: Mon, 19 Jan 2026 19:41:54 +0000
Message-ID:
 <PH0PR13MB563917ED47C88E90BE0E855CFD88A@PH0PR13MB5639.namprd13.prod.outlook.com>
References: <20260113234405.539422-1-tim.bird@sony.com>
 <875x8yw4n6.fsf@rustcorp.com.au>
In-Reply-To: <875x8yw4n6.fsf@rustcorp.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR13MB5639:EE_|DS7PR13MB7284:EE_
x-ms-office365-filtering-correlation-id: b5b289a0-2ebb-4b62-afee-08de5792cd10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?dUVZNEphVStuNEpDa09lVVkvMVhEVTRYcHA5UEpJY3hpVExJSzM3NCtJdHcv?=
 =?utf-8?B?V3VyTS9VZlZQZnNCQStZc2R4eGJQaXVWUTFEdlo1ZTcxWVBCUkJFNEJiM0hv?=
 =?utf-8?B?ZWp2em9kbHc3TWpaNVU1Si9Tc1FCc2g5OEFJbUNkWWNBdWVraHN5NW0vR2F6?=
 =?utf-8?B?U0t4bWptbUtMS1orV3VsODJjcDdYUHp0WEtTbHNQeFptRUFDaEZMamxMMVJu?=
 =?utf-8?B?cC9ENmJJRkdXOS84eVE2V2k5TzJIZ3AxUVlVUE1OelNHODcxUEhxc0tHSHBB?=
 =?utf-8?B?ci91Zm1Gc1dheTN3ZHZRZWs2dytBRGc2azM5bVNSY0w4dFJ6Y2ZuTGFxR095?=
 =?utf-8?B?WUE0MWhUSHEvQnk1SkxyRmFDNHZIZ3lMdHhCWU5ucXF1T0ZkeWk4YisrRmQ3?=
 =?utf-8?B?OXBxWFJBQk5EeEREWVFRQ01QQ2I3Rm0yR04ySTltVzBjMGZMQ3dXQnRZOGcv?=
 =?utf-8?B?OW54cU1EZ0s4SGFndU1GTW11NjVVOEMrUmF0SzRFbmk3V1F6NUUxV2NFQW1Y?=
 =?utf-8?B?NmZINWJ0aVhDc2JOdTEvRXNJaGt3OGhQeFFWK1YxQmxENWsvanZoT0xybGJ4?=
 =?utf-8?B?TWpITXArWVFOZWUwYnZQekM5VFRBMWtqSzRSRTMzcCt3TlZ6dnU4TVM4YVFa?=
 =?utf-8?B?dlpaU1Z0MXovaGw0enc5a2t5ekdRNDZiRVpyZDRrTDhPenRYM0owZXJxd2Jo?=
 =?utf-8?B?UnJmVnorU0JmZnlTM254ZU5RenFkZWdaYjd2VUFabTJwVHowVmRSbWFUdlg5?=
 =?utf-8?B?WmdtVkJSWXFsSGNXeWQzeFA0MTNlakdIbjFaMWg2QXFXRlN6NDF3YjhzcVF6?=
 =?utf-8?B?MnFzeWhuYVN3NVVkS1gyajgyOTdxdVJPZlVXUlBTL3A2SE80MWxFaVpVdHFL?=
 =?utf-8?B?TE9rd0wwR01VRytZcGtONEtyRUE1Ykpia25pdmovREE3VGt2ZDhqVU4zbFJl?=
 =?utf-8?B?NVN0K29GL2NxVHJ0RnlYZ1dFbTlHRHcvTEo3MzlVdWNuc2tMYm1GemVUVWJY?=
 =?utf-8?B?bzFWREFpeFRzTlJYOUNqVmdlR0NNSFRPTERkQmlxcHhKbVFsT0pzdEkzMEpv?=
 =?utf-8?B?YVJNa2ExaFNHM0JpZUlnNDg5MTVLUDdBT0NjVlM0R0l3UDZNRzFBb2k2NTQ4?=
 =?utf-8?B?ZWcrSjhOMEN6Tldra2lUZjVDTHRoM3Z4RmVkcFF1N1p2Y0EzTHBYSHpUdUpE?=
 =?utf-8?B?S3FEczJPNVNVb3N3QnhSbktmUk9RdjVQWHpuMERZdVh2ZkZ3YlNTb1F1a0xW?=
 =?utf-8?B?OUxYUSs2b1RkWFAvdENGVG93TTVzdXczSjFGejBBSDZWR24vS3NnbzJDZEo5?=
 =?utf-8?B?U0E3Y3N2cU93aW9OMEpJb0IzYnAxTGRjRWhEK2lSL21lUFlHUU02Yk9XTU5O?=
 =?utf-8?B?QnZyWTUxcVpRQ2lKbG9ldWhod3pzSnB1SU5oT0pxa0lucS9vUVhwdGpHRmx2?=
 =?utf-8?B?VGpWZWdlOFErQjgxVC9kK1BSSndFQStZc1l0TDEvN3dIM0ZJRkkySjlDNFUy?=
 =?utf-8?B?L2VXRnd6ZlhsY2QzVEkxSmkwdnYrNVpuL250T0xlRjNQanhrTE9lU0dMOTBn?=
 =?utf-8?B?cVM2dUk5VU5ZMC9TRFI1c1RleklUWFpoYmJaYy9tVk1iYTBuZFF0QzRSSzND?=
 =?utf-8?B?ckdyb2pTRUQwZ3owTG9wWmU0MURxSXViemZmUUZ3d3k2OFA0SVltYS9SSDhL?=
 =?utf-8?B?dDlQVWV6eHB0U3Q5VHZwd1g5R3MyRWNBRWNEYi9pWlJzc1pJWW5HdG55T0o0?=
 =?utf-8?B?QngwOU9va3pndnplVmZPeGlvL2lOY2trRGJpUnc5Szd6aEtsZG92SVRGOVRI?=
 =?utf-8?B?UzZFcWlBL2IvWERMZXR5TVB0OTV6VDVadytkbnBaaEpFRGl3ZFNpOUtkbHJQ?=
 =?utf-8?B?Q21LWmVhZ3VkWlk5UEdhRFpiS1R5elE1eE1qUEc0OW9sZUpLaXVRWkFLT1Zs?=
 =?utf-8?B?WDMyLzBhc04yc2NmZUxkelJEdHlvOU41UHhFYWwycFNIbDZkMHV3Zkh2RDRU?=
 =?utf-8?B?dEI2dThPVXc2U0NVbUVXUnNIeWc1cmhxalZIT2pMbFg2NkNPMlR2QkdsM2wv?=
 =?utf-8?B?a3ZxRFVVZDFGbVVTaTUvM3QzRkZMN1U1WGFiQkxoRHJCaFlOS3NPMDhFcUZZ?=
 =?utf-8?B?NUJRYWNTTHh1UEMzcnVWV2lYWENwdWVjOVpGTVhpOW1JR2JVTmxSb2tOM2Zq?=
 =?utf-8?Q?inUccNjpd/L8cMco/nH6vXw=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR13MB5639.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YWVmb2hPSGFHdHJVRG9sK3ZhU05kdGVvbks4aUJ1NVdmcFRncnlmaW4vbUdY?=
 =?utf-8?B?cFArWFh5aVkvbXptV25MbVVWMHY3akRjanNOaHlwOHBhdG5jOVZ5dUEwTFZ4?=
 =?utf-8?B?RVhheFk1QWVaM1ZGK0tRUnhsZlkxbG1RZUdqLytQTlJIeTVvSjgwZkxoWkR2?=
 =?utf-8?B?VnhiNE1leUNac2Z6Y1N0VlU4d3g5QVcwcnZPbUpXWERsV0NQZGJkaGN3WDhH?=
 =?utf-8?B?cUV6cC9RUVA4MEEyNExDNC9zQ3crQzNJa0trRHUvVkpPMmxJaUNUY2diajd3?=
 =?utf-8?B?MkJlNWNaYnByb01BdG16TnZqL3V2Z3lVMkczSG1JUFdCN0c1OTVEYXVXZ3Za?=
 =?utf-8?B?Q21iNjg3OG5HRmlTUFR5dVA0ZC9rMXdPRlcvTGJ2WVNqRGl1Ulg4RVlSbSt0?=
 =?utf-8?B?aGVvQ2s2U3g2RG5BcEJqT1V4VUk5YjBkL3MwTzZEaGYybDdQbEpkbDhwcDB5?=
 =?utf-8?B?UG9Nd056SW44OWQrS0lrWWQ4M1ViQys0S2NZVUNvb2ozM3hwOXE0SUlYOXp6?=
 =?utf-8?B?S3ZrcU9Sb3drbDZDQUV6eTZya2FNaExUVUxMMjhuV3J5WmdESFh5YU1UWDNs?=
 =?utf-8?B?cnNOcklzWEJyK25mcFlFbHBaNTJOQy82dkJ6UDU1bitNSTFIUG1QMUtEL2lm?=
 =?utf-8?B?ZWpwWmZtaDJ3Uk5vUW8rdkY3OVpHejBYOVF0YzEvT3g0d1JtZDNhb3Ayam5k?=
 =?utf-8?B?WU9BTlNXdVFORWlBdWo0d2I4WXlLd0JYWjRhRmJreDRMd1N5Z0d4STFxWE1i?=
 =?utf-8?B?djc4RXdNL09Od1JEQjdpcW5RWTl1VkF3QXVXNVQ2YmtIamljUXpLZzNFaUFE?=
 =?utf-8?B?WnZPR2RpMDlmYXhPYkZxUGRZYXErY3AvYk93TkFRcHA1N2k5NVcyK25nUSs3?=
 =?utf-8?B?Z2g2a1VPRjlPVHlUSXhpQzlVKzkzRWNMRkxpdjEreGxLKzJ2N2dZUzBlclQ2?=
 =?utf-8?B?RzdRQ3RkY2JZT2RQRmdRLzJhRDdRdFM5NEs0VVVBMFNOazZmd0RpY0VlbWZa?=
 =?utf-8?B?S1JQbVRwbG5PeVFFeEp5cTBYdjVGWHg5YzQzMFBOQzJ3UWczYlkyU1RhQ2VG?=
 =?utf-8?B?U3YrdnB5blFnRlp2bHFvdVV4S05OOTJIaDVqMXFxS0VIcGVmV0RkOHdTUWhq?=
 =?utf-8?B?Yk5mT3Mzc1lCYTBZQnc5WmxWa1VqcUVETlFuVXJFd3V6aWYyTElSeGFSZkpT?=
 =?utf-8?B?WXI2MiszOWV5akNsKzNZbjJlUzJ2TklxT0xaN0VQdFI1TlJqMWpNZlNXWFRU?=
 =?utf-8?B?VG9VTDFUYlF3aHp6OGFVK2FuWlRDNzlxd1pBZ2xkUk1tSlBzeWVYa2ZEeWsy?=
 =?utf-8?B?Z0RFU2ErWmd4MlV1akxnbWU4ZFhHWWh6RTRiSkNKeXJueDA0MXAyZU92NXcy?=
 =?utf-8?B?MnVSSkswcWsxYml3bjVneWlvZjVOeUVFY1YzRFJEdm1QbU5QMDBCdFVTY0w2?=
 =?utf-8?B?ejg0RjREREhLWmEwVEVrak5FcDdINzFvMEFvSUd1MS9seStZSGlSUXdsS1lz?=
 =?utf-8?B?c1VhZGo5ODkyL3lIZzBJdkRZNWNHRmxYZk5JMlppSk5NSnVjV1ZqQkRldjVL?=
 =?utf-8?B?QmVXRkdJRkJTTXc4bmVTUDY3azl6Qm5UZS9FOUljQkxRUjByR2EzSjA4VGpz?=
 =?utf-8?B?YXEzLzdNYi9YSWNzeVEwYVJIUTQxMEJZdmJxZlBwdUxuSFV1S2t0amdJUXVO?=
 =?utf-8?B?UWQ4ZlUwNDl5RUJUY3M5UzN4TXJ5WWtZWVpDSXVCUCtHQWFjNlNSZU8vcjE3?=
 =?utf-8?B?RmJEKzdRUkJBYnFPaXhvbFZ1NklmajhWUmZpbGc4T1ZwMmNKWXIzczJZOUQ0?=
 =?utf-8?B?TE1mb1UvTHFCc0dwbFVYOFZjR21DL3pKeGh2dWdDSHQvVGxMc1NzMU0ySEJa?=
 =?utf-8?B?L0ZSQmlPZlNxSVA5WmxpQzJPa3g2bXQ0YXBaa0JrR2JpdlFpSjZnU01PZGEr?=
 =?utf-8?B?YXdSRkhuemMzTzcwQ05iQmpGQjc3QzlJNGdMWjF5UzNwcDBiR2J5SkJ0RDBj?=
 =?utf-8?B?cFI4V016NW9MYVRNN2lZS2xmNnJ0MzcxOWJnU3hoREg4SW02WHhqOXhmdURN?=
 =?utf-8?B?VW5VVEhjYnVyTkpLSm1RV2doeGtaNlIyRFdlWndsMUQ5U00wcjhCd0ExazNW?=
 =?utf-8?B?UCt2N0swa2sxbFZWeWdTaVY3NHpNTkxhaTlycXlPVTZGVll5ZHVXbG04NVM3?=
 =?utf-8?B?Q2FhVmNJMWd2MHBIaVd2SVpMdjd6Rk00SERCZjZmbWo2emZ5eVhvRHcwdUg3?=
 =?utf-8?B?U1hsUUxiMmxFN3RtSUxkam45Y1hhU3VWTjJUcHY3RHVNemh3Wlh6TExBaUl5?=
 =?utf-8?Q?IOyG4TpWaJcYfK2I+u?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	1AhkfsEoFGwxGg62hKLRMhRsebEIKNcZexrlywxgHTM4wJMLEXVhbgB+IhrWrQCa4+lzX64a4a4JriOYA1+lX1WjcUiNItkWpby/aUmprnilNR0K+qVL4NNcdtIGmVeopCVaaQbcCvxV47L9gYq8xvgDjn2TnYAHM9UCdMQBbQB7vj71oK4ZxgsrLvJ9DPzmJNnX8zCwiGrWiVgHSdICE82e5OhR50+hQfTe6wfAn0sabsWTV6p9SmXXK4IuA47Zo2V8Uowq4KgtpkvCzcbaHKxMGLLKuHQpXLCF9PfwVfq/+78N33AVInhZKHiF/vszbO1Bol/AcPWaGYy43MHoibtXn8zsq3ac832Q8uiiKD2JgAzCT5Tdi4jr52TPM4+Yucfs3STDjZW8jsIwyRFOBhRcwPATD8Ycnq62Nhu6VNneZRn1g5z70PJ3YeLtoGiWPeMjVt7tmgjiog0GUPi77hD4Ul35laizuCnY5dpdplkACzyaOxP7UOia2CCQcbkqW5NKztzR9WTZTLEfsORlSetscf6JzMe7v+j3san1XaArz4/+65aLY89HF+8nW4WVo/9rlEj9xGb6t7G5I+yCkJGjOEYjCKAHllZBNCbY2gaLetGpi87YQSqRpwOFAi7E
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB5639.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5b289a0-2ebb-4b62-afee-08de5792cd10
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 19:41:55.0209
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bnuruXqykB2Z0XHEUB16zQ3ihGu+LqBmWu+k5pLuR7rb6lIoJeaImYdGqdggrUCS922Jc9Cka1enlpX/I7OmVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR13MB7284
X-Proofpoint-GUID: GIrNP41oTc60rIGqetfvRapKnwXys1gr
X-Authority-Analysis: v=2.4 cv=FKgWBuos c=1 sm=1 tr=0 ts=696e8907 cx=c_pps a=e6K3ZeJSw2wYQu/wAm/p+g==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=xR56lInIT_wA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Tty9oNO6AAAA:8 a=z6gsHLkEAAAA:8 a=_ZhYKdCeAAAA:8 a=Umwh5c0rx-gdXgDAHvwA:9 a=QEXdDO2ut3YA:10 a=Bts-Es6F1CBXvF7u4C_G:22 a=uqOk3ZSnBfCTOznnrPA1:22
X-Proofpoint-ORIG-GUID: GIrNP41oTc60rIGqetfvRapKnwXys1gr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE2NSBTYWx0ZWRfX3f0O/PD2IlxM pStP8mgRYDSB8vh80egjNurWtjwRB9mntpJU7fMLpT2sjHtbwrxZXfu4JmPsC0nH3KB/EjqWLPG h2YGV1werAsKvuasf7YVG1VOay8tMAPrWeZOCoo8ja++e0aX/tQj1LUxZbKH/JH6TNLcJs0XR+H
 qP4A5tW5p/hbTNB3hfjpgvGCdg7ploWvrNrHI15hpFjyN6YBSqzMPQxzZ0gr4FPjjS2uH/j6g+l teRewuNntEGLKx+zYkTfFfSv81NcNBIVJX3ogvkx87HS1V4lMu7oU0ONP0VIp+Cr2U+HmtckI88 FFt+MltBd2czigR+lZtJ0gtSzb5AlhLqTSadz8tIQTDQvGrS0OSD4rEFE2IT3XcCW8e/gPehc2T
 Jxga3eg8JEz4k6UxZ+ZZ/olwIuNjphbTwG4sBGtzEUFUhfTe7F8LF2zRQ8ZsyfkZospVeRzL0I6 Z9agJexJpqPSAtblCAw==
X-Sony-Outbound-GUID: GIrNP41oTc60rIGqetfvRapKnwXys1gr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_05,2026-01-19_03,2025-10-01_01

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSdXN0eSBSdXNzZWxsIDxydXN0
eUBydXN0Y29ycC5jb20uYXU+DQo+IEFjdHVhbGx5LCBhbGwgbXkga2VybmVsIGxpY2Vuc2VzIHdl
cmUgaW50ZW5kZWQgIkdQTCB2MiBvciBhbnkgbGF0ZXIgdmVyc2lvbiIuDQo+DQpPSyAtIGdvb2Qg
dG8ga25vdy4gIEknbGwgbm90ZSB0aGF0IGZvciBmdXR1cmUgU1BEWCB3b3JrLg0KIA0KPiBTb3Jy
eSBpZiB0aGF0IG1ha2VzIHRyb3VibGUgZm9yIHlvdXIgbGljZW5zaW5nIHRoZWF0ZXIgZ3JvdXAh
DQoNCk5vIHByb2JsZW0uICBUcnlpbmcgdG8gY2FwdHVyZSBvcmlnaW5hbCBpbnRlbnQgaXMgd2h5
IEkgaW5jbHVkZSBvcmlnaW5hbA0KYXV0aG9ycyBvbiB0aGUgU0RQWCBwYXRjaCBlbWFpbHMuDQoN
ClRoYW5rcy4gICBUaGVyZSBzaG91bGQgYmUgYSB2MiBzb29uIHJlZmxlY3RpbmcgdGhpcyBjaGFu
Z2UuDQogLS0gVGltDQoNCj4gDQo+IFRpbSBCaXJkIDx0aW0uYmlyZEBzb255LmNvbT4gd3JpdGVz
Og0KPiA+IEFkZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciBsaW5lcyB0byBzb21lIG9sZCBrZXJu
ZWwNCj4gPiBmaWxlcy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFRpbSBCaXJkIDx0aW0uYmly
ZEBzb255LmNvbT4NCj4gPiAtLS0NCj4gPiAga2VybmVsL2NwdS5jICAgfCAzICstLQ0KPiA+ICBr
ZXJuZWwvcmVsYXkuYyB8IDMgKy0tDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2tlcm5lbC9jcHUuYyBi
L2tlcm5lbC9jcHUuYw0KPiA+IGluZGV4IDhkZjJkNzczZmUzYi4uNTE4NWMwYmU4NDdhIDEwMDY0
NA0KPiA+IC0tLSBhL2tlcm5lbC9jcHUuYw0KPiA+ICsrKyBiL2tlcm5lbC9jcHUuYw0KPiA+IEBA
IC0xLDcgKzEsNiBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0K
PiA+ICAvKiBDUFUgY29udHJvbC4NCj4gPiAgICogKEMpIDIwMDEsIDIwMDIsIDIwMDMsIDIwMDQg
UnVzdHkgUnVzc2VsbA0KPiA+IC0gKg0KPiA+IC0gKiBUaGlzIGNvZGUgaXMgbGljZW5jZWQgdW5k
ZXIgdGhlIEdQTC4NCj4gPiAgICovDQo+ID4gICNpbmNsdWRlIDxsaW51eC9zY2hlZC9tbS5oPg0K
PiA+ICAjaW5jbHVkZSA8bGludXgvcHJvY19mcy5oPg0KPiA+IGRpZmYgLS1naXQgYS9rZXJuZWwv
cmVsYXkuYyBiL2tlcm5lbC9yZWxheS5jDQo+ID4gaW5kZXggZTM2ZjZiOTI2ZjdmLi42ZWQ2YmM5
MjliZjkgMTAwNjQ0DQo+ID4gLS0tIGEva2VybmVsL3JlbGF5LmMNCj4gPiArKysgYi9rZXJuZWwv
cmVsYXkuYw0KPiA+IEBAIC0xLDMgKzEsNCBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMA0KPiA+ICAvKg0KPiA+ICAgKiBQdWJsaWMgQVBJIGFuZCBjb21tb24gY29k
ZSBmb3Iga2VybmVsLT51c2Vyc3BhY2UgcmVsYXkgZmlsZSBzdXBwb3J0Lg0KPiA+ICAgKg0KPiA+
IEBAIC05LDggKzEwLDYgQEANCj4gPiAgICogTW92ZWQgdG8ga2VybmVsL3JlbGF5LmMgYnkgUGF1
bCBNdW5kdCwgMjAwNi4NCj4gPiAgICogTm92ZW1iZXIgMjAwNiAtIENQVSBob3RwbHVnIHN1cHBv
cnQgYnkgTWF0aGlldSBEZXNub3llcnMNCj4gPiAgICogCShtYXRoaWV1LmRlc25veWVyc0Bwb2x5
bXRsLmNhKQ0KPiA+IC0gKg0KPiA+IC0gKiBUaGlzIGZpbGUgaXMgcmVsZWFzZWQgdW5kZXIgdGhl
IEdQTC4NCj4gPiAgICovDQo+ID4gICNpbmNsdWRlIDxsaW51eC9lcnJuby5oPg0KPiA+ICAjaW5j
bHVkZSA8bGludXgvc3RkZGVmLmg+DQo+ID4gLS0NCj4gPiAyLjQzLjANCg==

