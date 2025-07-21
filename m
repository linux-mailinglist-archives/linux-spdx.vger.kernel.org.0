Return-Path: <linux-spdx+bounces-75-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73369B0C11B
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F1B118940CB
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BEF28EA6F;
	Mon, 21 Jul 2025 10:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iBTczx9G"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3851928EA53
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092960; cv=none; b=U4fVwiXb/4G5SfKrIxfY96aJsHcfdGgCRUs5dyRZLVeG4XFC85osfoTYLg+l8LIFfCFPebC3Jbj8xDqqDglK6+/Phs85xcaJ9G2X33ObWNKG4KjDuVY/U36drYhrD8Ko8ERXkdSBQgKEkc69N3Ozmv1IhtVTDvpLW8ZKO+U2QYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092960; c=relaxed/simple;
	bh=Xzm4L2rCMTbZETCxaqfrxzTEm+y5HPwHsQ7uZJUkLvo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o5AajeU+Rg5L+LRBHBNlDMInI0+88NYPT4K78Cjnt2NlT7e+ld61YgqBmOWJg7HAIO67owFqkrd0MGpEqG2cYRLeLHDQJn8k2umJ+MvL1kbEZI3w3jyuw8DM63MplABjRqPU5CTKXFlSClxillQTjMwxBQ2dmDyJCEWPBwE+2mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iBTczx9G; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=chuHxGtw5hxVAMaDl6gbD4Ls68eoG/cRtabCSyBVGiM=;
	b=iBTczx9GJJ9pAuqBs+6XBInNACEKyVjrW+SapjB32uvpF6ourGnesIDsDIaBT635sKq+cP
	I7ljOniRul27H5a4uhXDyM3g83bAyRDAk4ZPHgz/QzxdyvDi6GcQsPH9xm8cvPyVjmuXv3
	G11vc18tK2PO64C96P88VPzEmdVs15k=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-441-K7KOLOCLMA-hvPrvne4Axw-1; Mon,
 21 Jul 2025 06:15:56 -0400
X-MC-Unique: K7KOLOCLMA-hvPrvne4Axw-1
X-Mimecast-MFC-AGG-ID: K7KOLOCLMA-hvPrvne4Axw_1753092955
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EF9CC195608F;
	Mon, 21 Jul 2025 10:15:54 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 769F218016F9;
	Mon, 21 Jul 2025 10:15:52 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] LICENSES: Replace the obsolete address of the FSF in the GFDL-1.1
Date: Mon, 21 Jul 2025 12:15:36 +0200
Message-ID: <20250721101537.276552-6-thuth@redhat.com>
In-Reply-To: <20250721101537.276552-1-thuth@redhat.com>
References: <20250721101537.276552-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

From: Thomas Huth <thuth@redhat.com>

The FSF does not reside in the Franklin street anymore. Let's update
the address with the link to their website, as suggested in the latest
revisions of their GFDL-1.1 license:
https://www.gnu.org/licenses/old-licenses/fdl-1.1.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/deprecated/GFDL-1.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/LICENSES/deprecated/GFDL-1.1 b/LICENSES/deprecated/GFDL-1.1
index ae62699ab62c3..d7a524f602a47 100644
--- a/LICENSES/deprecated/GFDL-1.1
+++ b/LICENSES/deprecated/GFDL-1.1
@@ -24,7 +24,7 @@ License-Text:
                    Version 1.1, March 2000
 
  Copyright (C) 2000  Free Software Foundation, Inc.
-     51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
+     <https://fsf.org/>
  Everyone is permitted to copy and distribute verbatim copies
  of this license document, but changing it is not allowed.
 
-- 
2.50.0


