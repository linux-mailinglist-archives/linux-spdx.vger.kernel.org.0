Return-Path: <linux-spdx+bounces-96-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3A5B58638
	for <lists+linux-spdx@lfdr.de>; Mon, 15 Sep 2025 22:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F44D2A0BA9
	for <lists+linux-spdx@lfdr.de>; Mon, 15 Sep 2025 20:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610CD2C027E;
	Mon, 15 Sep 2025 20:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FQrGHeuE"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69772BD02A
	for <linux-spdx@vger.kernel.org>; Mon, 15 Sep 2025 20:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757969488; cv=none; b=LZT65QwqzwcUvNxGl2URajCSEiDOsVFMYuW6Q3VlMIDmZJrJ1tYUgor5542G9wZoX3tbVMXEOkUOhix/S/RcuFu1nhUGAarzDh7kVHnJaOgXlblt+BApuSWcPkY2HkUBwWQe7dbXEr+pYJ95IFoEtiTDYFamXMukKTe9UC0bpTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757969488; c=relaxed/simple;
	bh=5tLEpGLTmqki9uZ5Ssd3VGjxR8qvOCMIM3EGrSveqmE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GdfDJ7YEhr3ooWY8mLROXXfV8SjapKZZkaZmJpOWvlsE4+33kpUTpgS9X9M6ssm/9CWmETNz0Cr1F0lT42UbEm9WFJ28ekpHLSTWuRyTHrgw89CHFv2ttYmX9rZtmZKd09m+0vXaM0Q5i4NW2if0xyKL7JWa+cNwy3vcbMDZ8Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FQrGHeuE; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757969484;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7rPOUNSKjPh4xy6BLtaDSFDtBxmH2telq/K+IIfMn+E=;
	b=FQrGHeuEArY7gaDNSgr727i9FgxTjsk0gybTYMvvAn4Wczudl9kpYvIaW9nI8E3b1XySix
	L5UvuFOa0Y3o48fnQ5W83Eh9oxHFl9dOfQi8os8LfSCjQiLr+lX7QNhc3k2aYWcYJEcBSM
	Xph6Ue1PgB/4iqbQgg88a1TzWppkfCo=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-43-bCfdDYtiNDq6GW0h-gRsqg-1; Mon,
 15 Sep 2025 16:51:20 -0400
X-MC-Unique: bCfdDYtiNDq6GW0h-gRsqg-1
X-Mimecast-MFC-AGG-ID: bCfdDYtiNDq6GW0h-gRsqg_1757969478
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EE9101800350;
	Mon, 15 Sep 2025 20:51:17 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 5CA7F300021A;
	Mon, 15 Sep 2025 20:51:13 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-spdx@vger.kernel.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Johannes Berg <johannes.berg@intel.com>
Subject: [PATCH] macintosh/via-pmu: Replace GPLv2 boilerplate text with SPDX
Date: Mon, 15 Sep 2025 22:51:12 +0200
Message-ID: <20250915205112.353656-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

From: Thomas Huth <thuth@redhat.com>

The FSF does not reside in 51 Franklin Street anymore, so we should
not ask the people to write to that address in case they need a
copy of the GPL. To fix it, replace the boilerplate text by a proper
SPDX tag.

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 drivers/macintosh/via-pmu-event.c | 17 +----------------
 drivers/macintosh/via-pmu-led.c   | 17 +----------------
 2 files changed, 2 insertions(+), 32 deletions(-)

diff --git a/drivers/macintosh/via-pmu-event.c b/drivers/macintosh/via-pmu-event.c
index 25cd56542328c..7a73956e9b8a6 100644
--- a/drivers/macintosh/via-pmu-event.c
+++ b/drivers/macintosh/via-pmu-event.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * via-pmu event device for reporting some events that come through the PMU
  *
  * Copyright 2006 Johannes Berg <johannes@sipsolutions.net>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
- *
  */
 
 #include <linux/input.h>
diff --git a/drivers/macintosh/via-pmu-led.c b/drivers/macintosh/via-pmu-led.c
index fc1af74b65967..cbbb0036254cb 100644
--- a/drivers/macintosh/via-pmu-led.c
+++ b/drivers/macintosh/via-pmu-led.c
@@ -1,23 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * via-pmu LED class device
  *
  * Copyright 2006 Johannes Berg <johannes@sipsolutions.net>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
- * NON INFRINGEMENT.  See the GNU General Public License for more
- * details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
- *
  */
 #include <linux/types.h>
 #include <linux/kernel.h>
-- 
2.51.0


