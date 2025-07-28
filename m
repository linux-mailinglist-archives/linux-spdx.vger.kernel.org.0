Return-Path: <linux-spdx+bounces-78-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB26BB13CEB
	for <lists+linux-spdx@lfdr.de>; Mon, 28 Jul 2025 16:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69A354E0F3D
	for <lists+linux-spdx@lfdr.de>; Mon, 28 Jul 2025 14:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF41F26CE03;
	Mon, 28 Jul 2025 14:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DsnB2J8R"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E5026B76D
	for <linux-spdx@vger.kernel.org>; Mon, 28 Jul 2025 14:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712164; cv=none; b=JyBBHwx1qMLfmMxideDoTCrThAZCtw8vcZrPnYsPMtauk7cfCHCGd1FAuDtpebzRdaIxPmg25KQDKESWL58nYUys9BqwJa5yZnJ8Ol4njTcGM+BAY25c+zqmY76m1XjeWYyH2wTfC6qPApoqLksyxMn3j7nzg/z1URuEeNuGfUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712164; c=relaxed/simple;
	bh=TMBZw7T+2p4yueLnp9qiicCf6eojz8Xmv4qYvT7W0jA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dtjhXDWdFlVAXkltOOGwilecpUq9JjZeNbqZF9fhzjiXfw+F+uL229pB3iemQwndK8s80d+Wb0irkSbCN7ZA7SCeQh+9TobC8R97A+efFNAoQGXJ7OD3YmHue5nAB+mybPwFnjYw9dqyQ/KCT+vUBSyJhmZxx9hDuOsrZFHnWX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DsnB2J8R; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753712160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cBPoAPqURQrafwJDrZiP8f1JT2Q39loHMmrjHy+nrEw=;
	b=DsnB2J8RIdgtqSgRKZoZ19Fop617sEC0WyYKShbM8+UTg7JeLBSgvsqHkNiiLw3XFiACeC
	9JKbYwIVMOiEQb6RRSe0jBm4j6LCKXeWWMS6mVGo8cVXbBALpaA6arv9l0UTRAhjFwljUB
	3IV9AVJBPfsAcizxW4gRWkdMG3SFYuE=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-204-ObA72KOAORKge1j9rPd6lQ-1; Mon,
 28 Jul 2025 10:15:48 -0400
X-MC-Unique: ObA72KOAORKge1j9rPd6lQ-1
X-Mimecast-MFC-AGG-ID: ObA72KOAORKge1j9rPd6lQ_1753712146
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0D3861800876;
	Mon, 28 Jul 2025 14:15:46 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.117])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 94FC21955F24;
	Mon, 28 Jul 2025 14:15:41 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: Sean Christopherson <seanjc@google.com>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	kvm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spdx@vger.kernel.org
Subject: [PATCH] arch/x86/kvm/ioapic: Remove license boilerplate with bad FSF address
Date: Mon, 28 Jul 2025 16:15:40 +0200
Message-ID: <20250728141540.296816-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

From: Thomas Huth <thuth@redhat.com>

The Free Software Foundation does not reside in "59 Temple Place"
anymore, so we should not mention that address in the source code here.
But instead of updating the address to their current location, let's
rather drop the license boilerplate text here and use a proper SPDX
license identifier instead. The text talks about the "GNU *Lesser*
General Public License" and "any later version", so LGPL-2.1+ is the
right choice here.

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 arch/x86/kvm/ioapic.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/arch/x86/kvm/ioapic.c b/arch/x86/kvm/ioapic.c
index 45dae2d5d2f1f..e81f08c98e2f9 100644
--- a/arch/x86/kvm/ioapic.c
+++ b/arch/x86/kvm/ioapic.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: LGPL-2.1+
 /*
  *  Copyright (C) 2001  MandrakeSoft S.A.
  *  Copyright 2010 Red Hat, Inc. and/or its affiliates.
@@ -8,20 +9,6 @@
  *    http://www.linux-mandrake.com/
  *    http://www.mandrakesoft.com/
  *
- *  This library is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU Lesser General Public
- *  License as published by the Free Software Foundation; either
- *  version 2 of the License, or (at your option) any later version.
- *
- *  This library is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  Lesser General Public License for more details.
- *
- *  You should have received a copy of the GNU Lesser General Public
- *  License along with this library; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
  *  Yunhong Jiang <yunhong.jiang@intel.com>
  *  Yaozu (Eddie) Dong <eddie.dong@intel.com>
  *  Based on Xen 3.1 code.
-- 
2.50.1


