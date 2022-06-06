Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CA5453EF00
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232953AbiFFT6x (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232846AbiFFT6u (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:50 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C6B328E32
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:47 -0700 (PDT)
Message-ID: <20220606195512.764137675@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545526;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=CPAjqm8mPrMm/teZutq0EYp5Lk6m8ScRRLX1Lsdi30Y=;
        b=d/g0mguRPqI6TqhkOcvNLOCEl/cc5cwrltZaeVcql/EoGKo6ehV/v5UMh04ah+qjL0cDHv
        76CjIDaD+er69b23oLKxvxmUUTS2x3HkA3O985AtmAS0jX1JjtXreAZGa+p+X+ns39ykdF
        4N73za0ih0ZJ0YZhW0586iyV0JUENS6M1nEyJOzpKvz91SGzjD8vOKuDJpcOoXXhvysF0R
        jnFtHvF+Qs4ykmjqe04KsfvgvHVvR/k2GCDhHjMjxUMZ15E7V50Y9TnrzxhJIVLzCFx9Qh
        8dzUkcCn1xcBWwUuGgwR/Tz9EckDKGPggUR3nMCnN5VQroUjAetu5/GIJDgqww==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545526;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=CPAjqm8mPrMm/teZutq0EYp5Lk6m8ScRRLX1Lsdi30Y=;
        b=8KsTdGw3dzKx/mlb7OAkYqcV3ncwsBxspiwaPXpkNals8rd9mlalnra4VI6o9kEKrggYFm
        sqO6VW/P8ZCbOFCg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 15/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_298.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:45 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rm9sa3MhClJlZmVyZW5jZXM6IDwyMDIyMDYwNjE5NDA0Mi40Mjg1Njg5MzJAbGludXRyb25peC5k
ZT4KTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVU
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoaXMgcGFja2FnZSBp
cyBmcmVlIHNvZnR3YXJlIHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgaXQK
ICAgIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgZ251IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UgdmVy
c2lvbiAyIGFzCiAgICBwdWJsaXNoZWQgYnkgdGhlIGZyZWUgc29mdHdhcmUgZm91bmRhdGlvbiAg
dGhpcyBwYWNrYWdlIGlzIHByb3ZpZGVkIGFzCiAgICBpcyBhbmQgd2l0aG91dCBhbnkgZXhwcmVz
cyBvciBpbXBsaWVkIHdhcnJhbnRpZXMgaW5jbHVkaW5nIHdpdGhvdXQKICAgIGxpbWl0YXRpb24g
dGhlIGltcGxpZWQgd2FycmFudGllcyBvZiBtZXJjaGFudGliaWxpdHkgYW5kIGZpdG5lc3MgZm9y
IGEKICAgIHBhcnRpY3VsYXIgcHVycG9zZQoKZXh0cmFjdGVkIGJ5IHRoZSBzY2FuY29kZSBsaWNl
bnNlIHNjYW5uZXIgdGhlIFNQRFggbGljZW5zZSBpZGVudGlmaWVyCgogICAgR1BMLTIuMC1vbmx5
CgpoYXMgYmVlbiBjaG9zZW4gdG8gcmVwbGFjZSB0aGUgYm9pbGVycGxhdGUvcmVmZXJlbmNlLgoK
U2lnbmVkLW9mZi1ieTogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ci0tLQog
YXJjaC9hcm0vbWFjaC1vbWFwMS9ib2FyZC1zeDEuaCB8ICAgIDkgKy0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDggZGVsZXRpb25zKC0pCgotLS0gYS9hcmNoL2FybS9t
YWNoLW9tYXAxL2JvYXJkLXN4MS5oCisrKyBiL2FyY2gvYXJtL21hY2gtb21hcDEvYm9hcmQtc3gx
LmgKQEAgLTEsMTUgKzEsOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seSAqLwogLyoKICAqIFNpZW1lbnMgU1gxIGJvYXJkIGRlZmluaXRpb25zCiAgKgogICogQ29w
eXJpZ2h0OiBWb3Zhbjg4OCBhdCBnbWFpbCBjb20KLSAqCi0gKiBUaGlzIHBhY2thZ2UgaXMgZnJl
ZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1vZGlmeQotICogaXQg
dW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2ZXJzaW9u
IDIgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLgotICoK
LSAqIFRISVMgUEFDS0FHRSBJUyBQUk9WSURFRCBgYEFTIElTJycgQU5EIFdJVEhPVVQgQU5ZIEVY
UFJFU1MgT1IKLSAqIElNUExJRUQgV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJTUlU
QVRJT04sIFRIRSBJTVBMSUVECi0gKiBXQVJSQU5USUVTIE9GIE1FUkNIQU5USUJJTElUWSBBTkQg
RklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuCiAgKi8KIAogI2lmbmRlZiBfX0FTTV9B
UkNIX1NYMV9JMkNfQ0hJUFNfSAoK
