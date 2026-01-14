Return-Path: <linux-spdx+bounces-114-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FE3D212ED
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 21:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A068301E18D
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 20:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6178B2F39DD;
	Wed, 14 Jan 2026 20:31:17 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96007214204
	for <linux-spdx@vger.kernel.org>; Wed, 14 Jan 2026 20:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768422677; cv=none; b=RG0NYPtjaeOkSJXRJh2hlD+5NgdfykeddBvJF7qpivEWCr7+lTwUtWS+hktZPI9t4oe3K+krzwtEn/eB3ufwp2Z1aiHJ2BpPKf2oX2JfB9Dv8DTTZy9IMS6OgeMDlVJeIAVrjQsivA5ic2wAVN/lAf1J0+sruM1i8jYSpOvkL5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768422677; c=relaxed/simple;
	bh=fPNIrtHOwtvKHv5gfyvkaJJhd7+dCr/wt9TWn3PivKs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NAoG90ZKUZ0Of7K1JveYA+J2Z7w9mbuLOv5q+tOONq/qlCHbpYKjqEBYHCNLWh2ro8LwN3UcA/UsKnvoTcGL6emBwHdCs4GQB/Z2Td+KhENhSuR78eZHd6bcm00ZzoP4EbueX3lRldggiiCsK/CfHBbaJvb0T97e7fEmFsRf1tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5002b.ext.cloudfilter.net ([10.0.29.226])
	by cmsmtp with ESMTPS
	id g1PovcMdEKjfog7WNvZnLj; Wed, 14 Jan 2026 20:31:15 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id g7WMvXz1mN3K1g7WMvF9EC; Wed, 14 Jan 2026 20:31:14 +0000
X-Authority-Analysis: v=2.4 cv=UdRRSLSN c=1 sm=1 tr=0 ts=6967fd12
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=gD5sdRmai7KXGru0wTQA:9
 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=39514 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vg7WJ-000000037mZ-3KK4;
	Wed, 14 Jan 2026 13:31:11 -0700
From: Tim Bird <tim.bird@sony.com>
To: menage@google.com,
	simon.derr@bull.net,
	pj@sgi.com,
	longman@redhat.com,
	tj@kernel.org,
	hannes@cmpxchg.org,
	mkoutny@suse.com
Cc: linux-spdx@vger.kernel.org,
	cgroups@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: cgroup: Add SPDX-License-Identifier lines
Date: Wed, 14 Jan 2026 13:30:27 -0700
Message-ID: <20260114203027.584517-1-tim.bird@sony.com>
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
X-Exim-ID: 1vg7WJ-000000037mZ-3KK4
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:39514
X-Source-Auth: tim@bird.org
X-Email-Count: 4
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfGVkk5/gG5UTH1hKGaX9Tt/h/j80SrwQNR84PXpCUUUgWdFb1FEuRTvjiykJTWqrdP88KlyanfBKdXfMo+zmS2qbv3xGgEmYSA4nFE1wT5XPaFIF/+g7
 lAVQFoc3jFfowrfjex57hPEqGcH/D26OpTQYusmsWyNGEt1Jhgqrh/uba3xwDoKYw8Ns9WEjynHyGOUPmw0PEWJSeb4gXRcPLHY=

Add GPL-2.0 SPDX license id lines to a few old
files, replacing the reference to the COPYING file.

The COPYING file at the time of creation of these files
(2007 and 2005) was GPL-v2.0, with an additional clause
indicating that only v2 applied.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 kernel/cgroup/cgroup.c | 5 +----
 kernel/cgroup/cpuset.c | 5 +----
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/kernel/cgroup/cgroup.c b/kernel/cgroup/cgroup.c
index 554a02ee298b..5f0d33b04910 100644
--- a/kernel/cgroup/cgroup.c
+++ b/kernel/cgroup/cgroup.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  Generic process-grouping system.
  *
@@ -20,10 +21,6 @@
  *  2003-10-22 Updates by Stephen Hemminger.
  *  2004 May-July Rework by Paul Jackson.
  *  ---------------------------------------------------
- *
- *  This file is subject to the terms and conditions of the GNU General Public
- *  License.  See the file COPYING in the main directory of the Linux
- *  distribution for more details.
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
diff --git a/kernel/cgroup/cpuset.c b/kernel/cgroup/cpuset.c
index 3e8cc34d8d50..c06e2e96f79d 100644
--- a/kernel/cgroup/cpuset.c
+++ b/kernel/cgroup/cpuset.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  kernel/cpuset.c
  *
@@ -16,10 +17,6 @@
  *  2006 Rework by Paul Menage to use generic cgroups
  *  2008 Rework of the scheduler domains and CPU hotplug handling
  *       by Max Krasnyansky
- *
- *  This file is subject to the terms and conditions of the GNU General Public
- *  License.  See the file COPYING in the main directory of the Linux
- *  distribution for more details.
  */
 #include "cpuset-internal.h"
 
-- 
2.43.0


