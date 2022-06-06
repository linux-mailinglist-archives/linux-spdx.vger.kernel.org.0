Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D6D153EEFD
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232729AbiFFT6n (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiFFT6m (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:42 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E1A4DEA2
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:41 -0700 (PDT)
Message-ID: <20220606195512.526884349@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545520;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=PJ6+t8DXkt0nUaoLT3N3t3H6wPxeLIA7NNvFxYHTdB8=;
        b=uTzdVlDkaRNzRBcqFlNTzOTf4bDaRoIzt9VXnhgUekY29aCuiMjcqFsBAckCF1M9s8a4Db
        3jDCVa+4Pat+24fhCdmpoiYm/R3FI/2QPLNK/pVk7Cr8gXe/SgkPkHLzfWjQjVr/gJ3Cdu
        ozPjhXWIx3rRp+Emc9B1ebmlFXNkPXoDkYNQxfw0qzijUORAFCpjLyxnrK9oqkaLtyFQLA
        b1t8DoulEZcmyT1v2HE4GDsAMZXdUNfZqT18UKeVdYesQd2Zi8Ywj2W+hfeHSHS+Wlhc2z
        PxUJ7sOWSlaaxbnHyS3hzqBGaQihFZXA0MgMEG5kzxKrUejCcjLrs2/ywzWCYA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545520;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=PJ6+t8DXkt0nUaoLT3N3t3H6wPxeLIA7NNvFxYHTdB8=;
        b=cMdyh13LQKpRBPxocMFtVI3oNDpbQ7vOBOnpi0dYxkbAntSy3qBX43h2gAint5sze2MGAf
        WCKjGgy8njXJ1yCw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 11/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_179.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:39 +0200 (CEST)
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
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIGdwbCBoZWFkZXIgc3Rh
cnQgIGRvIG5vdCBhbHRlciBvciByZW1vdmUgY29weXJpZ2h0IG5vdGljZXMgb3IgdGhpcwogICAg
ZmlsZSBoZWFkZXIgIHRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlIHlvdSBjYW4gcmVkaXN0
cmlidXRlIGl0CiAgICBhbmQvb3IgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgZ251
IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UKICAgIHZlcnNpb24gMiBvbmx5IGFzIHB1Ymxpc2hlZCBi
eSB0aGUgZnJlZSBzb2Z0d2FyZSBmb3VuZGF0aW9uICB0aGlzCiAgICBwcm9ncmFtIGlzIGRpc3Ry
aWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwgYnV0IHdpdGhvdXQKICAg
IGFueSB3YXJyYW50eSB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YgbWVyY2hh
bnRhYmlsaXR5IG9yCiAgICBmaXRuZXNzIGZvciBhIHBhcnRpY3VsYXIgcHVycG9zZSBzZWUgdGhl
IGdudSBnZW5lcmFsIHB1YmxpYyBsaWNlbnNlCiAgICB2ZXJzaW9uIDIgZm9yIG1vcmUgZGV0YWls
cyAoYSBjb3B5IGlzIGluY2x1ZGVkIGluIHRoZSBsaWNlbnNlIGZpbGUKICAgIHRoYXQgYWNjb21w
YW5pZWQgdGhpcyBjb2RlKSAgeW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUK
ICAgIGdudSBnZW5lcmFsIHB1YmxpYyBsaWNlbnNlIHZlcnNpb24gMiBhbG9uZyB3aXRoIHRoaXMg
cHJvZ3JhbSBpZiBub3QKICAgIHNlZSBodHRwOi8vd3d3IGdudSBvcmcvbGljZW5zZXMgIHBsZWFz
ZSB2aXNpdCBodHRwOi8vd3d3IHh5cmF0ZXgKICAgIGNvbS9jb250YWN0IGlmIHlvdSBuZWVkIGFk
ZGl0aW9uYWwgaW5mb3JtYXRpb24gb3IgaGF2ZSBhbnkgcXVlc3Rpb25zCiAgICBncGwgaGVhZGVy
IGVuZAoKZXh0cmFjdGVkIGJ5IHRoZSBzY2FuY29kZSBsaWNlbnNlIHNjYW5uZXIgdGhlIFNQRFgg
bGljZW5zZSBpZGVudGlmaWVyCgogICAgR1BMLTIuMC1vbmx5CgpoYXMgYmVlbiBjaG9zZW4gdG8g
cmVwbGFjZSB0aGUgYm9pbGVycGxhdGUvcmVmZXJlbmNlLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFz
IEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ci0tLQogYXJjaC94ODYvY3J5cHRvL2NyYzMy
LXBjbG11bF9hc20uUyB8ICAgMjIgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAyMSBkZWxldGlvbnMoLSkKCi0tLSBhL2FyY2gveDg2L2NyeXB0
by9jcmMzMi1wY2xtdWxfYXNtLlMKKysrIGIvYXJjaC94ODYvY3J5cHRvL2NyYzMyLXBjbG11bF9h
c20uUwpAQCAtMSwyNCArMSw0IEBACi0vKiBHUEwgSEVBREVSIFNUQVJUCi0gKgotICogRE8gTk9U
IEFMVEVSIE9SIFJFTU9WRSBDT1BZUklHSFQgTk9USUNFUyBPUiBUSElTIEZJTEUgSEVBREVSLgot
ICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0
ZSBpdCBhbmQvb3IgbW9kaWZ5Ci0gKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5l
cmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMiBvbmx5LAotICogYXMgcHVibGlzaGVkIGJ5IHRo
ZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uCi0gKgotICogVGhpcyBwcm9ncmFtIGlzIGRpc3Ry
aWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsIGJ1dAotICogV0lUSE9V
VCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgotICog
TUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2Vl
IHRoZSBHTlUKLSAqIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lvbiAyIGZvciBtb3JlIGRl
dGFpbHMgKGEgY29weSBpcyBpbmNsdWRlZAotICogaW4gdGhlIExJQ0VOU0UgZmlsZSB0aGF0IGFj
Y29tcGFuaWVkIHRoaXMgY29kZSkuCi0gKgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEg
Y29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIHZlcnNpb24gMiBhbG9u
ZyB3aXRoIHRoaXMgcHJvZ3JhbTsgSWYgbm90LCBzZWUgaHR0cDovL3d3dy5nbnUub3JnL2xpY2Vu
c2VzCi0gKgotICogUGxlYXNlICB2aXNpdCBodHRwOi8vd3d3Lnh5cmF0ZXguY29tL2NvbnRhY3Qg
aWYgeW91IG5lZWQgYWRkaXRpb25hbAotICogaW5mb3JtYXRpb24gb3IgaGF2ZSBhbnkgcXVlc3Rp
b25zLgotICoKLSAqIEdQTCBIRUFERVIgRU5ECisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5ICovCiAgKi8KIAogLyoKCg==
