Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B84E553EF06
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232970AbiFFT7M (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:59:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233033AbiFFT7C (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:59:02 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95332527FE
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:55 -0700 (PDT)
Message-ID: <20220606195513.052444018@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545534;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=pEELsK6KEOhcWqA1RbKWuUHJbIZl8m8i6kWzH/fI5CM=;
        b=Lwftb4CW3EwgGKldg8G0S1Pf0X59jkMjh0swsyMZtK8Nx8NMaz7aCq47wx6E68624TRB93
        nM5YqsGAAdE1gzW4NyKk8/6Wt70wIhM5TO5+seRGSAlIMrvi0lUYhnhQ6vQ7lsU2dP0Oxr
        jVcjTyQX6ZZge9P/vjozUcMnkxut04VZt7beWeUpcMp6C+q2RB9e4WdpUZByk5UpwyDwkx
        4GOjFRVJH1sqwyv36LSinY+0hOewE7/s4MaudAVcVlYRVJXmzE6eZTSzOU8FCLpcPUM7Sz
        XL/qO7J4FoN/Q4HXvdGlI4OIN2Hhunge8FhZVXsPLLveEkIRW4LanbIc2EBgtg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545534;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=pEELsK6KEOhcWqA1RbKWuUHJbIZl8m8i6kWzH/fI5CM=;
        b=ISbNUd72HlbNACOq2RSAacFpGeRj0I+mifapwQ4HQ0+rNKfTAnNVf5ZuvliT1gDlFP8viR
        SXp7AX4O1GzepqDw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 20/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_385.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:53 +0200 (CEST)
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
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIGxpY2Vuc2VkIHVuZGVy
IHRoZSBncGwgdjIKCmV4dHJhY3RlZCBieSB0aGUgc2NhbmNvZGUgbGljZW5zZSBzY2FubmVyIHRo
ZSBTUERYIGxpY2Vuc2UgaWRlbnRpZmllcgoKICAgIEdQTC0yLjAtb25seQoKaGFzIGJlZW4gY2hv
c2VuIHRvIHJlcGxhY2UgdGhlIGJvaWxlcnBsYXRlL3JlZmVyZW5jZS4KClNpZ25lZC1vZmYtYnk6
IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgotLS0KIGFyY2gvc3BhcmMvdmRz
by92ZHNvMmMuYyAgICAgICAgICAgICAgICAgICAgfCAgICAyICstCiBhcmNoL3g4Ni9lbnRyeS92
ZHNvL3Zkc28yYy5jICAgICAgICAgICAgICAgIHwgICAgMiArLQogc2NyaXB0cy9nY2MtcGx1Z2lu
cy9sYXRlbnRfZW50cm9weV9wbHVnaW4uYyB8ICAgIDIgKy0KIHNjcmlwdHMvZ2NjLXBsdWdpbnMv
c3RhY2tsZWFrX3BsdWdpbi5jICAgICAgfCAgICAyICstCiBzY3JpcHRzL2djYy1wbHVnaW5zL3N0
cnVjdGxlYWtfcGx1Z2luLmMgICAgIHwgICAgMiArLQogdG9vbHMvcG93ZXIvY3B1cG93ZXIvZGVi
dWcvaTM4Ni9kdW1wX3BzYi5jICB8ICAgIDYgKystLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCi0tLSBhL2FyY2gvc3BhcmMvdmRzby92ZHNvMmMu
YworKysgYi9hcmNoL3NwYXJjL3Zkc28vdmRzbzJjLmMKQEAgLTEsNyArMSw3IEBACisvLyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAvKgogICogdmRzbzJjIC0gQSB2ZHNv
IGltYWdlIHByZXBhcmF0aW9uIHRvb2wKICAqIENvcHlyaWdodCAoYykgMjAxNCBBbmR5IEx1dG9t
aXJza2kgYW5kIG90aGVycwotICogTGljZW5zZWQgdW5kZXIgdGhlIEdQTCB2MgogICoKICAqIHZk
c28yYyByZXF1aXJlcyBzdHJpcHBlZCBhbmQgdW5zdHJpcHBlZCBpbnB1dC4gIEl0IHdvdWxkIGJl
IHRyaXZpYWwKICAqIHRvIGZ1bGx5IHN0cmlwIHRoZSBpbnB1dCBpbiBoZXJlLCBidXQsIGZvciBy
ZWFzb25zIGRlc2NyaWJlZCBiZWxvdywKLS0tIGEvYXJjaC94ODYvZW50cnkvdmRzby92ZHNvMmMu
YworKysgYi9hcmNoL3g4Ni9lbnRyeS92ZHNvL3Zkc28yYy5jCkBAIC0xLDcgKzEsNyBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQogLyoKICAqIHZkc28yYyAtIEEg
dmRzbyBpbWFnZSBwcmVwYXJhdGlvbiB0b29sCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTQgQW5keSBM
dXRvbWlyc2tpIGFuZCBvdGhlcnMKLSAqIExpY2Vuc2VkIHVuZGVyIHRoZSBHUEwgdjIKICAqCiAg
KiB2ZHNvMmMgcmVxdWlyZXMgc3RyaXBwZWQgYW5kIHVuc3RyaXBwZWQgaW5wdXQuICBJdCB3b3Vs
ZCBiZSB0cml2aWFsCiAgKiB0byBmdWxseSBzdHJpcCB0aGUgaW5wdXQgaW4gaGVyZSwgYnV0LCBm
b3IgcmVhc29ucyBkZXNjcmliZWQgYmVsb3csCi0tLSBhL3NjcmlwdHMvZ2NjLXBsdWdpbnMvbGF0
ZW50X2VudHJvcHlfcGx1Z2luLmMKKysrIGIvc2NyaXB0cy9nY2MtcGx1Z2lucy9sYXRlbnRfZW50
cm9weV9wbHVnaW4uYwpAQCAtMSw3ICsxLDcgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkKIC8qCiAgKiBDb3B5cmlnaHQgMjAxMi0yMDE2IGJ5IHRoZSBQYVggVGVh
bSA8cGFnZWV4ZWNAZnJlZW1haWwuaHU+CiAgKiBDb3B5cmlnaHQgMjAxNiBieSBFbWVzZSBSZXZm
eSA8cmUuZW1lc2VAZ21haWwuY29tPgotICogTGljZW5zZWQgdW5kZXIgdGhlIEdQTCB2MgogICoK
ICAqIE5vdGU6IHRoZSBjaG9pY2Ugb2YgdGhlIGxpY2Vuc2UgbWVhbnMgdGhhdCB0aGUgY29tcGls
YXRpb24gcHJvY2VzcyBpcwogICogICAgICAgTk9UICdlbGlnaWJsZScgYXMgZGVmaW5lZCBieSBn
Y2MncyBsaWJyYXJ5IGV4Y2VwdGlvbiB0byB0aGUgR1BMIHYzLAotLS0gYS9zY3JpcHRzL2djYy1w
bHVnaW5zL3N0YWNrbGVha19wbHVnaW4uYworKysgYi9zY3JpcHRzL2djYy1wbHVnaW5zL3N0YWNr
bGVha19wbHVnaW4uYwpAQCAtMSw3ICsxLDcgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkKIC8qCiAgKiBDb3B5cmlnaHQgMjAxMS0yMDE3IGJ5IHRoZSBQYVggVGVh
bSA8cGFnZWV4ZWNAZnJlZW1haWwuaHU+CiAgKiBNb2RpZmllZCBieSBBbGV4YW5kZXIgUG9wb3Yg
PGFsZXgucG9wb3ZAbGludXguY29tPgotICogTGljZW5zZWQgdW5kZXIgdGhlIEdQTCB2MgogICoK
ICAqIE5vdGU6IHRoZSBjaG9pY2Ugb2YgdGhlIGxpY2Vuc2UgbWVhbnMgdGhhdCB0aGUgY29tcGls
YXRpb24gcHJvY2VzcyBpcwogICogTk9UICdlbGlnaWJsZScgYXMgZGVmaW5lZCBieSBnY2MncyBs
aWJyYXJ5IGV4Y2VwdGlvbiB0byB0aGUgR1BMIHYzLAotLS0gYS9zY3JpcHRzL2djYy1wbHVnaW5z
L3N0cnVjdGxlYWtfcGx1Z2luLmMKKysrIGIvc2NyaXB0cy9nY2MtcGx1Z2lucy9zdHJ1Y3RsZWFr
X3BsdWdpbi5jCkBAIC0xLDYgKzEsNiBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seQogLyoKICAqIENvcHlyaWdodCAyMDEzLTIwMTcgYnkgUGFYIFRlYW0gPHBhZ2Vl
eGVjQGZyZWVtYWlsLmh1PgotICogTGljZW5zZWQgdW5kZXIgdGhlIEdQTCB2MgogICoKICAqIE5v
dGU6IHRoZSBjaG9pY2Ugb2YgdGhlIGxpY2Vuc2UgbWVhbnMgdGhhdCB0aGUgY29tcGlsYXRpb24g
cHJvY2VzcyBpcwogICogICAgICAgTk9UICdlbGlnaWJsZScgYXMgZGVmaW5lZCBieSBnY2MncyBs
aWJyYXJ5IGV4Y2VwdGlvbiB0byB0aGUgR1BMIHYzLAotLS0gYS90b29scy9wb3dlci9jcHVwb3dl
ci9kZWJ1Zy9pMzg2L2R1bXBfcHNiLmMKKysrIGIvdG9vbHMvcG93ZXIvY3B1cG93ZXIvZGVidWcv
aTM4Ni9kdW1wX3BzYi5jCkBAIC0xLDcgKzEsNSBAQAotLyoKLSAqIGR1bXBfcHNiLiAoYykgMjAw
NCwgRGF2ZSBKb25lcywgUmVkIEhhdCBJbmMuCi0gKiBMaWNlbnNlZCB1bmRlciB0aGUgR1BMIHYy
LgotICovCisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CisvLyBkdW1w
X3BzYi4gKGMpIDIwMDQsIERhdmUgSm9uZXMsIFJlZCBIYXQgSW5jLgogCiAjaW5jbHVkZSA8ZmNu
dGwuaD4KICNpbmNsdWRlIDxzdGRpby5oPgoK
