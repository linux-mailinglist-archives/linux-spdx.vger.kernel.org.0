Return-Path: <linux-spdx+bounces-71-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C385B0C112
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C66083A67F9
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018B217B4EC;
	Mon, 21 Jul 2025 10:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="T0zWZPzA"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6087520E71C
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092951; cv=none; b=T65t9aRNJrejsE5dLGKh+OCQxQYs5/h40YBlV6EdkhUNcQu3SdK1yzW9E4/Pft+JYRCO69fnAVow3F8a9yL/LQ6CJ6hCi7xbM9ZyULplTnVqZeDBRDcXcqUm6ogv9IHw5Ci86eWjjdaOFaZ1ccPCkPycdouas/KSIQC1SxZEAkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092951; c=relaxed/simple;
	bh=S9owtAt1UqdxSwzjhxbjY5sGLg2M1nO59dc7r2AMM1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aVBeJblK9iq4BwpKKA5KffhMW4fk653QT9Ovjeer7rjVCnOTf0WXMeIRKnFXNcGsg4Qh6I2BCswxkoiFIqwI6YSYZuGb0OlpgWuWxiQP+WrAEfUT9j3efTw8i4BCEf030eDrvNtJUbqRbVSVKhM3RUV9DdRyMn3gBSMlu/xuoTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=T0zWZPzA; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kdalZgA7tdwwim35dDzo53ryeCEhMe8Zi3jZpXTgcxo=;
	b=T0zWZPzAac7skpJsZxQAkH8gv8EDHUVKDsluEkq9gtjHyAgu5SzQD90CTNcv0a4Zpf9wII
	9rqMfXgp5QKelyt0evqKm+JPyE+lnDXiR47vJ9qsJ9zX52jrTGnC5s3g//9OCq7M/t99g1
	Db0nDhaDbcq5yJmJHnkCGKP1O+T+BgI=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-j7RknbwSMhiovRBP6mxpRw-1; Mon,
 21 Jul 2025 06:15:47 -0400
X-MC-Unique: j7RknbwSMhiovRBP6mxpRw-1
X-Mimecast-MFC-AGG-ID: j7RknbwSMhiovRBP6mxpRw_1753092947
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA43F1956080;
	Mon, 21 Jul 2025 10:15:46 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id ADF661800D82;
	Mon, 21 Jul 2025 10:15:44 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] LICENSES: Replace the obsolete address of the FSF in the GPL-2.0
Date: Mon, 21 Jul 2025 12:15:33 +0200
Message-ID: <20250721101537.276552-3-thuth@redhat.com>
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
revisions of their GPL-2.0 license:
https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/preferred/GPL-2.0 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/LICENSES/preferred/GPL-2.0 b/LICENSES/preferred/GPL-2.0
index ff0812fd89cc4..ea8e93dc44bc4 100644
--- a/LICENSES/preferred/GPL-2.0
+++ b/LICENSES/preferred/GPL-2.0
@@ -20,8 +20,8 @@ License-Text:
 		    GNU GENERAL PUBLIC LICENSE
 		       Version 2, June 1991
 
- Copyright (C) 1989, 1991 Free Software Foundation, Inc.
-                       51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
+ Copyright (C) 1989, 1991 Free Software Foundation, Inc.,
+ <https://fsf.org/>
  Everyone is permitted to copy and distribute verbatim copies
  of this license document, but changing it is not allowed.
 
@@ -322,10 +322,8 @@ the "copyright" line and a pointer to where the full notice is found.
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
     GNU General Public License for more details.
 
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
-
+    You should have received a copy of the GNU General Public License along
+    with this program; if not, see <https://www.gnu.org/licenses/>.
 
 Also add information on how to contact you by electronic and paper mail.
 
-- 
2.50.0


