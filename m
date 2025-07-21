Return-Path: <linux-spdx+bounces-72-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEABB0C114
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA06217FE2F
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F10C28DB50;
	Mon, 21 Jul 2025 10:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hxiIT257"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03A52A8C1
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092952; cv=none; b=TefR0doNPXabcDb0pgT/CSwgXiOLKATiQfV2AEOE7c2fhY9wksZd3DH30LmYS5+jKTb5sC3U6m9Ai2bQtv2Ro4vq19CxXaG/NbkWtKvHJISKLxTJ9Rzug+iTCXJANSSi4DS/H/oW2JSPwrzOh1wSvk9GOi+qILETn8T8QGx+ET0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092952; c=relaxed/simple;
	bh=SC7WhsoXmzFudK0zP5P0dB1VtlVQR8sp56BuQQ6AExM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uRY4P50Kl0VMJ4fOoT/Qi/or7nCHc0fdkalHEmBIZmldfkBdaLT4UTHeiKVowcG/u+JbubgyQbrH4CucWaAiLvX5KL0Vwv5a8qMwIE6DpoP5x2EkGAv7dFnqtWMvydhT9y0LVl8qdvFhEEP8M0De1BrO8O7gfnBJiIe0Tg7VYCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hxiIT257; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wx877EPKDnfiqdDNam4Ax0TpqGQsHSdoxLSOAyINoqc=;
	b=hxiIT257N5R0mUXoGZdn585dkayncopw3qd6+DudyOY1DA9onS3MdnCLJn2NgOSVKNOrlo
	R9D1Z61lMZS3iELy4tySm/IxzdYXHqOW91hK6puFOSg/xcuq4yky20A4NNAje0xhOfWt9t
	INvzHVPBd2XdYMHRIPx8ZwHmq88ZUzY=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-671-2reR--NCPZSucM5YqMaV6A-1; Mon,
 21 Jul 2025 06:15:45 -0400
X-MC-Unique: 2reR--NCPZSucM5YqMaV6A-1
X-Mimecast-MFC-AGG-ID: 2reR--NCPZSucM5YqMaV6A_1753092944
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E8A219560AE;
	Mon, 21 Jul 2025 10:15:44 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id DBC9F18016F9;
	Mon, 21 Jul 2025 10:15:41 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] LICENSES: Replace the obsolete address of the FSF in the GPL-1.0
Date: Mon, 21 Jul 2025 12:15:32 +0200
Message-ID: <20250721101537.276552-2-thuth@redhat.com>
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

The FSF does not reside in the Mass Ave anymore. Let's update the
address with the link to their website, as suggested in the latest
revisions of their GPL-1.0 license:
https://www.gnu.org/licenses/old-licenses/gpl-1.0.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/deprecated/GPL-1.0 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/LICENSES/deprecated/GPL-1.0 b/LICENSES/deprecated/GPL-1.0
index 3a4fa969e4c29..8d0a75431f06d 100644
--- a/LICENSES/deprecated/GPL-1.0
+++ b/LICENSES/deprecated/GPL-1.0
@@ -14,7 +14,8 @@ License-Text:
 	     Version 1, February 1989
 
  Copyright (C) 1989 Free Software Foundation, Inc.
-                    675 Mass Ave, Cambridge, MA 02139, USA
+                    <https://fsf.org/>
+
  Everyone is permitted to copy and distribute verbatim copies
  of this license document, but changing it is not allowed.
 
@@ -227,8 +228,7 @@ the exclusion of warranty; and each file should have at least the
     GNU General Public License for more details.
 
     You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+    along with this program; if not, see <https://www.gnu.org/licenses/>.
 
 Also add information on how to contact you by electronic and paper mail.
 
-- 
2.50.0


