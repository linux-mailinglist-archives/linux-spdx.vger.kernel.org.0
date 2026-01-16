Return-Path: <linux-spdx+bounces-117-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65707D295D0
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 01:05:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5474830389AD
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 00:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512631862A;
	Fri, 16 Jan 2026 00:04:58 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0A5BA45
	for <linux-spdx@vger.kernel.org>; Fri, 16 Jan 2026 00:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768521898; cv=none; b=pRSP6k0OJti+PQ96ZK/OyZydpjWER5DDxzA3Jn0bgZVsE2JPdmDlqabSzrBfbV1tv9UiecZyP1zEY9JrpcCBueSzuZG3/4+aw4UJaJzxeIx4gQYlJ/TCIQNqijrB0/Igk0y/kJ0mn9UFzg7bNAO9KsFWdHARKUoRshlI4b8fcBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768521898; c=relaxed/simple;
	bh=0vsSIAvl/ImXHMP0ElVUbBoGN50hVFzvXE0aU8VJAsM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nlhTc+Nnqhhn/1td9Ls0k57DunJzVl3EcbZu7YOYsBenMIAQUNIEjJ2ieX0qc/sxWTARrGymGMiuFsYSC7OyW92rzqjVE6hr9QdB2yCU8g3s5d+BgydQU+jKCeZNTM7fHBl5AmGtoqwhoFyoIdj9LsvxAZWAHjjOew+WNMFBkZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5003b.ext.cloudfilter.net ([10.0.29.155])
	by cmsmtp with ESMTPS
	id gUSHvkLcTSkcfgXKbvEeZs; Fri, 16 Jan 2026 00:04:49 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id gXKavmWBw2l0kgXKavNZWJ; Fri, 16 Jan 2026 00:04:49 +0000
X-Authority-Analysis: v=2.4 cv=UfRRSLSN c=1 sm=1 tr=0 ts=696980a1
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=5uySVRI38VskozMhrtQA:9
 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=41710 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vgXKY-00000001kKi-2ZdU;
	Thu, 15 Jan 2026 17:04:46 -0700
From: Tim Bird <tim.bird@sony.com>
To: torvalds@linux-foundation.org,
	mcgrof@kernel.org,
	petr.pavlu@suse.com,
	da.gomez@kernel.org
Cc: linux-spdx@vger.kernel.org,
	linux-modules@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: modules: Add SPDX license identifier to kmod.c
Date: Thu, 15 Jan 2026 17:04:31 -0700
Message-ID: <20260116000431.643070-1-tim.bird@sony.com>
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
X-Exim-ID: 1vgXKY-00000001kKi-2ZdU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:41710
X-Source-Auth: tim@bird.org
X-Email-Count: 4
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfBrDI9sQaKT1Q+t++MTaBj85lIGaQZlrHT87+p7GnP+PFeuklJ1XkY89ZOT3vxIc4e8sGkzokBeTJGB+nvzfOb4POfD9G+i+rSYlJmDEGaB0waTf9b94
 kKR1nLeYwcBAZ4L5OrSdPluBijjrERTwaOSrK6FWv2E37TmJgXXd8fGZY4ddsTaaXzRHxCLDrrnopfEVjprVaG/vmVcaA/psnYY=

Add a GPL-2.0 license identifier line for this file.

kmod.c was originally introduced in the kernel in February
of 1998 by Linus Torvalds - who was familiar with kernel
licensing at the time this was introduced.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 kernel/module/kmod.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/module/kmod.c b/kernel/module/kmod.c
index 25f253812512..a25dccdf7aa7 100644
--- a/kernel/module/kmod.c
+++ b/kernel/module/kmod.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * kmod - the kernel module loader
  *
-- 
2.43.0


