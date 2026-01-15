Return-Path: <linux-spdx+bounces-116-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBD1D22086
	for <lists+linux-spdx@lfdr.de>; Thu, 15 Jan 2026 02:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0BC73016B83
	for <lists+linux-spdx@lfdr.de>; Thu, 15 Jan 2026 01:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A967C12CD8B;
	Thu, 15 Jan 2026 01:31:58 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CC58F4A
	for <linux-spdx@vger.kernel.org>; Thu, 15 Jan 2026 01:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768440718; cv=none; b=pmsrthw8hfBNacVl+ukGFcvYf1k/4Dk6OvMD6L7FtTcVsaBSqb/oC2TTHHD3fNPokOUQv+DPwQC/X5fYXEQEPkOs2AzO3SXZAERV/jmAaRZ7O4sE6D3yYQFG0JLk+APrbCxxb5ZlRu6oq1LqwoJoI8Cqlq/jEGlqkzNuQC/dAY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768440718; c=relaxed/simple;
	bh=AlGkuX55E+iwWNCiSmQbkU502zKTm6EkPkUORp4GlAI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BPjnhJcrGF+fh3CI6J0GCbZsxnp53LjhYHWVCtdjd0eA7x8ByQkNMwfdNzDcgq5doQuHaDxLA/mzbtpMG7nWXA3IF0pRoCDM1zMMPKVxfiPmAGq6TzuNBFJpO/lDWetdP5+y1P5mH4bZrz5VdP0tPdIg9OLrlQOywXmcQv4A8pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5002b.ext.cloudfilter.net ([10.0.29.226])
	by cmsmtp with ESMTPS
	id gAXNveMIoSkcfgCDLv3DmU; Thu, 15 Jan 2026 01:31:55 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id gCDKvcUMyN3K1gCDLvJ32b; Thu, 15 Jan 2026 01:31:55 +0000
X-Authority-Analysis: v=2.4 cv=UdRRSLSN c=1 sm=1 tr=0 ts=6968438b
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=odGvurlAbDJ6Lck-HAUA:9
 a=bcJbkyMg_6Rm9PQ4FUss:22 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=34982 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vgCDI-000000033kt-3tTM;
	Wed, 14 Jan 2026 18:31:53 -0700
From: Tim Bird <tim.bird@sony.com>
To: kuba@kernel.org,
	andrii@kernel.org,
	daniel@iogearbox.net,
	ast@kernel.org
Cc: linux-spdx@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: bpf: Add SPDX license identifiers to a few files
Date: Wed, 14 Jan 2026 18:31:29 -0700
Message-ID: <20260115013129.598705-1-tim.bird@sony.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - host2044.hostmonster.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sony.com
X-BWhitelist: no
X-Source-IP: 66.118.46.62
X-Source-L: No
X-Exim-ID: 1vgCDI-000000033kt-3tTM
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:34982
X-Source-Auth: tim@bird.org
X-Email-Count: 4
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfEODfzut2gjbv+6ev6raaChfnfXqWqFsICLN2wFGnFLt3fgeG6SU8RnLCH1nVufY84IRtO97FBMxGbixeC8NzZqLwcxk8elf6jTv0AUVD80WtJyQs097
 0mKYemiPGKJHhhq9Gare6qV0vx15Cuj/X5xLNO+mPUi28X//FqRxrg6rwPVw7gaVEKhgw01b59wRFdR6aIelASA5JqSxiOjFuE0=

Add GPL-2.0 SPDX-License-Identifier lines to some files,
and remove a reference to COPYING, and boilerplate warranty
text, from offload.c.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 kernel/bpf/offload.c | 12 +-----------
 kernel/bpf/ringbuf.c |  1 +
 kernel/bpf/token.c   |  1 +
 3 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/kernel/bpf/offload.c b/kernel/bpf/offload.c
index 42ae8d595c2c..227f9b5f388b 100644
--- a/kernel/bpf/offload.c
+++ b/kernel/bpf/offload.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2017-2018 Netronome Systems, Inc.
- *
- * This software is licensed under the GNU General License Version 2,
- * June 1991 as shown in the file COPYING in the top-level directory of this
- * source tree.
- *
- * THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS"
- * WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING,
- * BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
- * FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE
- * OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME
- * THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
  */
 
 #include <linux/bpf.h>
diff --git a/kernel/bpf/ringbuf.c b/kernel/bpf/ringbuf.c
index f6a075ffac63..35ae64ade36b 100644
--- a/kernel/bpf/ringbuf.c
+++ b/kernel/bpf/ringbuf.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
 #include <linux/btf.h>
 #include <linux/err.h>
diff --git a/kernel/bpf/token.c b/kernel/bpf/token.c
index feecd8f4dbf9..7e4aa1e44b50 100644
--- a/kernel/bpf/token.c
+++ b/kernel/bpf/token.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 #include <linux/bpf.h>
 #include <linux/vmalloc.h>
 #include <linux/file.h>
-- 
2.43.0


