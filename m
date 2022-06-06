Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6430B53EF01
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbiFFT6y (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232805AbiFFT6u (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:50 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DEF225C5F
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:46 -0700 (PDT)
Message-ID: <20220606195512.707120668@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545524;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=eKYitoCAAXx46R9F/fXFxsGInac+KZniPoB7KIXWafE=;
        b=o5IDqQx9zOBQ/0qkqnNKAVtymteWx80CoontqrqqgOLCvMgLPW3svGG12nALNm8fMG/Z9m
        CB8IWK7uQXoylVhN5YiVMKWDAZThMdK7OFfGMPOKZm68as5QMb4z3Y8k/Q4HUx4FaCULjU
        vtpXUTkx/Gz9TweGn7EX4f13LoNDtzvhbGt41i4CrJuIrrvPV+Ye7+Bv4FZpc9zZv2G2Q2
        /2set2x+HXqxu6MVGL2ENlyWmE1TLUvEyGABwkmB26YffpgLHZbx4f4B8c5VHqU3KeIQyN
        lnlfYnFOQPrnR3qmNpXyqhs67tFSKtEuKqhv2yGwnkqFmVhdsB58Q43TwFDrGg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545524;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=eKYitoCAAXx46R9F/fXFxsGInac+KZniPoB7KIXWafE=;
        b=hR2O3jVZLuBWBcewaeLarJFWHTpnnhY7X6ouVu7mdUF/MgnSF6sBbS3vqTm7bR5XThhgF5
        /D1XQ7JmyDb/fzCA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 14/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_292.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:44 +0200 (CEST)
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
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoaXMgcHJvZ3JhbSBp
cyBmcmVlIHNvZnR3YXJlIHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgaXQK
ICAgIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgZ251IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UgdmVy
c2lvbiAyIGFzCiAgICBwdWJsaXNoZWQgYnkgdGhlIGZyZWUgc29mdHdhcmUgZm91bmRhdGlvbiAg
eW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEKICAgIGNvcHkgb2YgdGhlIGdudSBnZW5lcmFsIHB1
YmxpYyBsaWNlbnNlIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtIGlmIG5vdAogICAgc2VlIDxodHRw
Oi8vd3d3IGdudSBvcmcvbGljZW5zZXMvPiAgdGhpcyBzb2Z0d2FyZSBpcyBwcm92aWRlZCBhcyBp
cwogICAgYW5kIHdpdGhvdXQgYW55IGV4cHJlc3Mgb3IgaW1wbGllZCB3YXJyYW50aWVzIGluY2x1
ZGluZyB3aXRob3V0CiAgICBsaW1pdGF0aW9uIHRoZSBpbXBsaWVkIHdhcnJhbnRpZXMgb2YgbWVy
Y2hhbnRhYmlsaXR5IGFuZCBmaXRuZXNzIGZvciBhCiAgICBwYXJ0aWN1bGFyIHB1cnBvc2UKCmV4
dHJhY3RlZCBieSB0aGUgc2NhbmNvZGUgbGljZW5zZSBzY2FubmVyIHRoZSBTUERYIGxpY2Vuc2Ug
aWRlbnRpZmllcgoKICAgIEdQTC0yLjAtb25seQoKaGFzIGJlZW4gY2hvc2VuIHRvIHJlcGxhY2Ug
dGhlIGJvaWxlcnBsYXRlL3JlZmVyZW5jZS4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5l
ciA8dGdseEBsaW51dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8v
Y3hnYi9jb21tb24uaCAgICAgICAgICAgIHwgICAxMSArLS0tLS0tLS0tLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvY2hlbHNpby9jeGdiL2NwaHkuaCAgICAgICAgICAgICAgfCAgIDExICstLS0tLS0t
LS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2IvY3BsNV9jbWQuaCAgICAgICAg
ICB8ICAgMTIgKy0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2Iv
ZWxtZXIwLmggICAgICAgICAgICB8ICAgMTIgKy0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9jaGVsc2lvL2N4Z2IvZXNwaS5jICAgICAgICAgICAgICB8ICAgMTEgKy0tLS0tLS0tLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9lc3BpLmggICAgICAgICAgICAgIHwg
ICAxMSArLS0tLS0tLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL2dtYWMu
aCAgICAgICAgICAgICAgfCAgIDExICstLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9j
aGVsc2lvL2N4Z2IvbXY4OHgyMDF4LmMgICAgICAgICB8ICAgMTEgKy0tLS0tLS0tLS0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9wbTMzOTMuYyAgICAgICAgICAgIHwgICAxMSAr
LS0tLS0tLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL3JlZ3MuaCAgICAg
ICAgICAgICAgfCAgIDExICstLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lv
L2N4Z2Ivc2dlLmMgICAgICAgICAgICAgICB8ICAgMTEgKy0tLS0tLS0tLS0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9zZ2UuaCAgICAgICAgICAgICAgIHwgICAxMSArLS0tLS0t
LS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL3N1YnIuYyAgICAgICAgICAg
ICAgfCAgIDExICstLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2Iv
c3VuaTF4MTBnZXhwX3JlZ3MuaCB8ICAgMTIgKy0tLS0tLS0tLS0tCiAxNCBmaWxlcyBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCAxNDMgZGVsZXRpb25zKC0pCgotLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9jaGVsc2lvL2N4Z2IvY29tbW9uLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
Y2hlbHNpby9jeGdiL2NvbW1vbi5oCkBAIC0xLDMgKzEsNCBAQAorLyogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICoKICAqIEZpbGU6IGNvbW1vbi5oICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgpAQCAtNiwxNiArNyw2IEBACiAg
KiBEZXNjcmlwdGlvbjogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICoKICAqICBwYXJ0IG9mIHRoZSBDaGVsc2lvIDEwR2IgRXRoZXJu
ZXQgRHJpdmVyLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAqCi0gKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRp
c3RyaWJ1dGUgaXQgYW5kL29yIG1vZGlmeSAgICAgICoKLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBv
ZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UsIHZlcnNpb24gMiwgYXMgICAgICAgKgot
ICogcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFlvdSBzaG91
bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
IGFsb25nICAgKgotICogd2l0aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvPi4gICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoK
LSAqIFRISVMgU09GVFdBUkUgSVMgUFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBF
WFBSRVNTIE9SIElNUExJRUQgICAgKgotICogV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VU
IExJTUlUQVRJT04sIFRIRSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgICAgICAqCi0gKiBNRVJDSEFO
VEFCSUxJVFkgQU5EIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgICAgICAgICAg
ICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogaHR0cDovL3d3dy5jaGVsc2lv
LmNvbSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
CiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNp
by9jeGdiL2NwaHkuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2IvY3Bo
eS5oCkBAIC0xLDMgKzEsNCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seSAqLwogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAq
IEZpbGU6IGNwaHkuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgKgpAQCAtNiwxNiArNyw2IEBACiAgKiBEZXNjcmlwdGlvbjogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICoKICAqICBwYXJ0IG9mIHRoZSBDaGVsc2lvIDEwR2IgRXRoZXJuZXQgRHJpdmVyLiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBUaGlz
IHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29y
IG1vZGlmeSAgICAgICoKLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwg
UHVibGljIExpY2Vuc2UsIHZlcnNpb24gMiwgYXMgICAgICAgKgotICogcHVibGlzaGVkIGJ5IHRo
ZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBh
IGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFsb25nICAgKgotICogd2l0
aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMv
Pi4gICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRISVMgU09GVFdBUkUg
SVMgUFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBFWFBSRVNTIE9SIElNUExJRUQg
ICAgKgotICogV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJTUlUQVRJT04sIFRIRSBJ
TVBMSUVEIFdBUlJBTlRJRVMgT0YgICAgICAqCi0gKiBNRVJDSEFOVEFCSUxJVFkgQU5EIEZJVE5F
U1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgICAgICAgICAgICAgICAgICAgICoKICAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKgogICogaHR0cDovL3d3dy5jaGVsc2lvLmNvbSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICoKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL2NwbDVfY21kLmgK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL2NwbDVfY21kLmgKQEAgLTEs
MyArMSw0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCiAv
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogRmlsZTogY3Bs
NV9jbWQuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAqCkBAIC02LDE2ICs3LDYgQEAKICAqIERlc2NyaXB0aW9uOiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogIHBh
cnQgb2YgdGhlIENoZWxzaW8gMTBHYiBFdGhlcm5ldCBEcml2ZXIuICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRoaXMgcHJvZ3JhbSBp
cyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9kaWZ5ICAg
ICAgKgotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSwgdmVyc2lvbiAyLCBhcyAgICAgICAqCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29m
dHdhcmUgRm91bmRhdGlvbi4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0
aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYWxvbmcgICAqCi0gKiB3aXRoIHRoaXMgcHJv
Z3JhbTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+LiAgICAgICAg
ICAgICoKLSAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogVEhJUyBTT0ZUV0FSRSBJUyBQUk9WSURF
RCBgYEFTIElTJycgQU5EIFdJVEhPVVQgQU5ZIEVYUFJFU1MgT1IgSU1QTElFRCAgICAqCi0gKiBX
QVJSQU5USUVTLCBJTkNMVURJTkcsIFdJVEhPVVQgTElNSVRBVElPTiwgVEhFIElNUExJRUQgV0FS
UkFOVElFUyBPRiAgICAgICoKLSAqIE1FUkNIQU5UQUJJTElUWSBBTkQgRklUTkVTUyBGT1IgQSBQ
QVJUSUNVTEFSIFBVUlBPU0UuICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqCiAgKiBodHRwOi8vd3d3LmNoZWxzaW8uY29tICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgpAQCAt
NjM1LDQgKzYyNiwzIEBAIHN0cnVjdCBjcGxfbXNzX2NoYW5nZSB7CiB9OwogCiAjZW5kaWYgLyog
X0NYR0JfQ1BMNV9DTURfSF8gKi8KLQotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lv
L2N4Z2IvZWxtZXIwLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL2Vs
bWVyMC5oCkBAIC0xLDMgKzEsNCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seSAqLwogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoK
ICAqIEZpbGU6IGVsbWVyMC5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKgpAQCAtNiwxNiArNyw2IEBACiAgKiBEZXNjcmlwdGlvbjog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICoKICAqICBwYXJ0IG9mIHRoZSBDaGVsc2lvIDEwR2IgRXRoZXJuZXQgRHJpdmVyLiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBU
aGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5k
L29yIG1vZGlmeSAgICAgICoKLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVy
YWwgUHVibGljIExpY2Vuc2UsIHZlcnNpb24gMiwgYXMgICAgICAgKgotICogcHVibGlzaGVkIGJ5
IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZl
ZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFsb25nICAgKgotICog
d2l0aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5z
ZXMvPi4gICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRISVMgU09GVFdB
UkUgSVMgUFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBFWFBSRVNTIE9SIElNUExJ
RUQgICAgKgotICogV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJTUlUQVRJT04sIFRI
RSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgICAgICAqCi0gKiBNRVJDSEFOVEFCSUxJVFkgQU5EIEZJ
VE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgICAgICAgICAgICAgICAgICAgICoKICAq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgKgogICogaHR0cDovL3d3dy5jaGVsc2lvLmNvbSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICoKQEAgLTE1NCw0ICsxNDUsMyBAQCBlbnVtIHsKICNkZWZpbmUgTUkxX09QX0lORElS
RUNUX1JFQUQgICAgIDMKIAogI2VuZGlmIC8qIF9DWEdCX0VMTUVSMF9IXyAqLwotCi0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9lc3BpLmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvY2hlbHNpby9jeGdiL2VzcGkuYwpAQCAtMSwzICsxLDQgQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIC8qKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAqCiAgKiBGaWxlOiBlc3BpLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKQEAgLTcsMTYgKzgsNiBA
QAogICogIEV0aGVybmV0IFNQSSBmdW5jdGlvbmFsaXR5LiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgcGFydCBvZiB0aGUgQ2hlbHNpbyAxMEdiIEV0
aGVybmV0IERyaXZlci4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKgotICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4g
cmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgICAgICAqCi0gKiBpdCB1bmRlciB0aGUgdGVy
bXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlLCB2ZXJzaW9uIDIsIGFzICAgICAg
ICoKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgKgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBZb3Ug
c2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSBhbG9uZyAgICoKLSAqIHdpdGggdGhpcyBwcm9ncmFtOyBpZiBub3QsIHNlZSA8aHR0cDov
L3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uICAgICAgICAgICAgKgotICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAqCi0gKiBUSElTIFNPRlRXQVJFIElTIFBST1ZJREVEIGBgQVMgSVMnJyBBTkQgV0lUSE9VVCBB
TlkgRVhQUkVTUyBPUiBJTVBMSUVEICAgICoKLSAqIFdBUlJBTlRJRVMsIElOQ0xVRElORywgV0lU
SE9VVCBMSU1JVEFUSU9OLCBUSEUgSU1QTElFRCBXQVJSQU5USUVTIE9GICAgICAgKgotICogTUVS
Q0hBTlRBQklMSVRZIEFORCBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gICAgICAg
ICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqIGh0dHA6Ly93d3cuY2hl
bHNpby5jb20gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2No
ZWxzaW8vY3hnYi9lc3BpLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdi
L2VzcGkuaApAQCAtMSwzICsxLDQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wLW9ubHkgKi8KIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
CiAgKiBGaWxlOiBlc3BpLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoKQEAgLTYsMTYgKzcsNiBAQAogICogRGVzY3JpcHRpb246
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqCiAgKiAgcGFydCBvZiB0aGUgQ2hlbHNpbyAxMEdiIEV0aGVybmV0IERyaXZlci4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICog
VGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFu
ZC9vciBtb2RpZnkgICAgICAqCi0gKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5l
cmFsIFB1YmxpYyBMaWNlbnNlLCB2ZXJzaW9uIDIsIGFzICAgICAgICoKLSAqIHB1Ymxpc2hlZCBi
eSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2
ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhbG9uZyAgICoKLSAq
IHdpdGggdGhpcyBwcm9ncmFtOyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vu
c2VzLz4uICAgICAgICAgICAgKgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBUSElTIFNPRlRX
QVJFIElTIFBST1ZJREVEIGBgQVMgSVMnJyBBTkQgV0lUSE9VVCBBTlkgRVhQUkVTUyBPUiBJTVBM
SUVEICAgICoKLSAqIFdBUlJBTlRJRVMsIElOQ0xVRElORywgV0lUSE9VVCBMSU1JVEFUSU9OLCBU
SEUgSU1QTElFRCBXQVJSQU5USUVTIE9GICAgICAgKgotICogTUVSQ0hBTlRBQklMSVRZIEFORCBG
SVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gICAgICAgICAgICAgICAgICAgICAqCiAg
KiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICoKICAqIGh0dHA6Ly93d3cuY2hlbHNpby5jb20gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAqCi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9nbWFjLmgK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL2dtYWMuaApAQCAtMSwzICsx
LDQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KIC8qKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiBGaWxlOiBnbWFjLmgg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICoKQEAgLTcsMTYgKzgsNiBAQAogICogIEdlbmVyaWMgTUFDIGZ1bmN0aW9uYWxpdHkuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgcGFydCBv
ZiB0aGUgQ2hlbHNpbyAxMEdiIEV0aGVybmV0IERyaXZlci4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogVGhpcyBwcm9ncmFtIGlzIGZy
ZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgICAgICAq
Ci0gKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
LCB2ZXJzaW9uIDIsIGFzICAgICAgICoKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2Fy
ZSBGb3VuZGF0aW9uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAqCi0gKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhbG9uZyAgICoKLSAqIHdpdGggdGhpcyBwcm9ncmFt
OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uICAgICAgICAgICAg
KgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBUSElTIFNPRlRXQVJFIElTIFBST1ZJREVEIGBg
QVMgSVMnJyBBTkQgV0lUSE9VVCBBTlkgRVhQUkVTUyBPUiBJTVBMSUVEICAgICoKLSAqIFdBUlJB
TlRJRVMsIElOQ0xVRElORywgV0lUSE9VVCBMSU1JVEFUSU9OLCBUSEUgSU1QTElFRCBXQVJSQU5U
SUVTIE9GICAgICAgKgotICogTUVSQ0hBTlRBQklMSVRZIEFORCBGSVRORVNTIEZPUiBBIFBBUlRJ
Q1VMQVIgUFVSUE9TRS4gICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICoKICAqIGh0dHA6Ly93d3cuY2hlbHNpby5jb20gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9tdjg4eDIwMXguYworKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2IvbXY4OHgyMDF4LmMKQEAgLTEsMyArMSw0IEBACisv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAvKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogRmlsZTogbXY4OHgyMDF4LmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCkBAIC03
LDE2ICs4LDYgQEAKICAqICBNYXJ2ZWxsIFBIWSAobXY4OHgyMDF4KSBmdW5jdGlvbmFsaXR5LiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogIHBhcnQgb2YgdGhlIENoZWxz
aW8gMTBHYiBFdGhlcm5ldCBEcml2ZXIuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
CiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJl
OyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9kaWZ5ICAgICAgKgotICogaXQgdW5k
ZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSwgdmVyc2lvbiAy
LCBhcyAgICAgICAqCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlv
bi4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIEdlbmVyYWwg
UHVibGljIExpY2Vuc2UgYWxvbmcgICAqCi0gKiB3aXRoIHRoaXMgcHJvZ3JhbTsgaWYgbm90LCBz
ZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+LiAgICAgICAgICAgICoKLSAqICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKgotICogVEhJUyBTT0ZUV0FSRSBJUyBQUk9WSURFRCBgYEFTIElTJycgQU5E
IFdJVEhPVVQgQU5ZIEVYUFJFU1MgT1IgSU1QTElFRCAgICAqCi0gKiBXQVJSQU5USUVTLCBJTkNM
VURJTkcsIFdJVEhPVVQgTElNSVRBVElPTiwgVEhFIElNUExJRUQgV0FSUkFOVElFUyBPRiAgICAg
ICoKLSAqIE1FUkNIQU5UQUJJTElUWSBBTkQgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBP
U0UuICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiBodHRw
Oi8vd3d3LmNoZWxzaW8uY29tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9jaGVsc2lvL2N4Z2IvcG0zMzkzLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
Y2hlbHNpby9jeGdiL3BtMzM5My5jCkBAIC0xLDMgKzEsNCBAQAorLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb25seQogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICoKICAqIEZpbGU6IHBtMzM5My5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgpAQCAtNywxNiArOCw2IEBACiAgKiAg
UE1DL1NJRVJSQSAocG0zMzkzKSBNQUMtUEhZIGZ1bmN0aW9uYWxpdHkuICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICoKICAqICBwYXJ0IG9mIHRoZSBDaGVsc2lvIDEwR2IgRXRoZXJuZXQg
RHJpdmVyLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqCi0gKiBUaGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3Ry
aWJ1dGUgaXQgYW5kL29yIG1vZGlmeSAgICAgICoKLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0
aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UsIHZlcnNpb24gMiwgYXMgICAgICAgKgotICog
cHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFlvdSBzaG91bGQg
aGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFs
b25nICAgKgotICogd2l0aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3Lmdu
dS5vcmcvbGljZW5zZXMvPi4gICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAq
IFRISVMgU09GVFdBUkUgSVMgUFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBFWFBS
RVNTIE9SIElNUExJRUQgICAgKgotICogV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJ
TUlUQVRJT04sIFRIRSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgICAgICAqCi0gKiBNRVJDSEFOVEFC
SUxJVFkgQU5EIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgICAgICAgICAgICAg
ICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogaHR0cDovL3d3dy5jaGVsc2lvLmNv
bSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAg
KiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICoKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9j
eGdiL3JlZ3MuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2IvcmVncy5o
CkBAIC0xLDMgKzEsNCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25s
eSAqLwogLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqIEZp
bGU6IHJlZ3MuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKgpAQCAtNiwxNiArNyw2IEBACiAgKiBEZXNjcmlwdGlvbjogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoK
ICAqICBwYXJ0IG9mIHRoZSBDaGVsc2lvIDEwR2IgRXRoZXJuZXQgRHJpdmVyLiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBUaGlzIHBy
b2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1v
ZGlmeSAgICAgICoKLSAqIGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVi
bGljIExpY2Vuc2UsIHZlcnNpb24gMiwgYXMgICAgICAgKgotICogcHVibGlzaGVkIGJ5IHRoZSBG
cmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
Ci0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNv
cHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFsb25nICAgKgotICogd2l0aCB0
aGlzIHByb2dyYW07IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4g
ICAgICAgICAgICAqCi0gKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRISVMgU09GVFdBUkUgSVMg
UFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBFWFBSRVNTIE9SIElNUExJRUQgICAg
KgotICogV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJTUlUQVRJT04sIFRIRSBJTVBM
SUVEIFdBUlJBTlRJRVMgT0YgICAgICAqCi0gKiBNRVJDSEFOVEFCSUxJVFkgQU5EIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKgogICogaHR0cDovL3d3dy5jaGVsc2lvLmNvbSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICoKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvY2hlbHNpby9jeGdiL3NnZS5jCisrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9zZ2UuYwpAQCAtMSwzICsxLDQgQEAKKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIC8qKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiBGaWxlOiBzZ2UuYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKQEAgLTcs
MTYgKzgsNiBAQAogICogIERNQSBlbmdpbmUuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgcGFydCBvZiB0aGUgQ2hlbHNp
byAxMEdiIEV0aGVybmV0IERyaXZlci4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoK
ICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKgotICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7
IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkgICAgICAqCi0gKiBpdCB1bmRl
ciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlLCB2ZXJzaW9uIDIs
IGFzICAgICAgICoKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9u
LiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
Ci0gKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQ
dWJsaWMgTGljZW5zZSBhbG9uZyAgICoKLSAqIHdpdGggdGhpcyBwcm9ncmFtOyBpZiBub3QsIHNl
ZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uICAgICAgICAgICAgKgotICogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAqCi0gKiBUSElTIFNPRlRXQVJFIElTIFBST1ZJREVEIGBgQVMgSVMnJyBBTkQg
V0lUSE9VVCBBTlkgRVhQUkVTUyBPUiBJTVBMSUVEICAgICoKLSAqIFdBUlJBTlRJRVMsIElOQ0xV
RElORywgV0lUSE9VVCBMSU1JVEFUSU9OLCBUSEUgSU1QTElFRCBXQVJSQU5USUVTIE9GICAgICAg
KgotICogTUVSQ0hBTlRBQklMSVRZIEFORCBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9T
RS4gICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqIGh0dHA6
Ly93d3cuY2hlbHNpby5jb20gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2NoZWxzaW8vY3hnYi9zZ2UuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVs
c2lvL2N4Z2Ivc2dlLmgKQEAgLTEsMyArMSw0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vbmx5ICovCiAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKICAqICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKgogICogRmlsZTogc2dlLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCkBAIC02LDE2ICs3LDYgQEAKICAqIERlc2Ny
aXB0aW9uOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKgogICogIHBhcnQgb2YgdGhlIENoZWxzaW8gMTBHYiBFdGhlcm5ldCBEcml2
ZXIuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0
ZSBpdCBhbmQvb3IgbW9kaWZ5ICAgICAgKgotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSwgdmVyc2lvbiAyLCBhcyAgICAgICAqCi0gKiBwdWJs
aXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbi4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICoKLSAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogWW91IHNob3VsZCBoYXZl
IHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYWxvbmcg
ICAqCi0gKiB3aXRoIHRoaXMgcHJvZ3JhbTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9y
Zy9saWNlbnNlcy8+LiAgICAgICAgICAgICoKLSAqICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogVEhJ
UyBTT0ZUV0FSRSBJUyBQUk9WSURFRCBgYEFTIElTJycgQU5EIFdJVEhPVVQgQU5ZIEVYUFJFU1Mg
T1IgSU1QTElFRCAgICAqCi0gKiBXQVJSQU5USUVTLCBJTkNMVURJTkcsIFdJVEhPVVQgTElNSVRB
VElPTiwgVEhFIElNUExJRUQgV0FSUkFOVElFUyBPRiAgICAgICoKLSAqIE1FUkNIQU5UQUJJTElU
WSBBTkQgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICAgICAgICAgICAgICAgICAg
ICAgKgogICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiBodHRwOi8vd3d3LmNoZWxzaW8uY29tICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKgotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2Iv
c3Vici5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYi9zdWJyLmMKQEAg
LTEsMyArMSw0IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAv
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogRmlsZTogc3Vi
ci5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAqCkBAIC03LDE2ICs4LDYgQEAKICAqICBWYXJpb3VzIHN1YnJvdXRpbmVzIChpbnRy
LHBpbyxldGMuKSB1c2VkIGJ5IENoZWxzaW8gMTBHIEV0aGVybmV0IGRyaXZlci4gKgogICogIHBh
cnQgb2YgdGhlIENoZWxzaW8gMTBHYiBFdGhlcm5ldCBEcml2ZXIuICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAqCiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqIFRoaXMgcHJvZ3JhbSBp
cyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9kaWZ5ICAg
ICAgKgotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSwgdmVyc2lvbiAyLCBhcyAgICAgICAqCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29m
dHdhcmUgRm91bmRhdGlvbi4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKLSAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0
aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYWxvbmcgICAqCi0gKiB3aXRoIHRoaXMgcHJv
Z3JhbTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+LiAgICAgICAg
ICAgICoKLSAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogVEhJUyBTT0ZUV0FSRSBJUyBQUk9WSURF
RCBgYEFTIElTJycgQU5EIFdJVEhPVVQgQU5ZIEVYUFJFU1MgT1IgSU1QTElFRCAgICAqCi0gKiBX
QVJSQU5USUVTLCBJTkNMVURJTkcsIFdJVEhPVVQgTElNSVRBVElPTiwgVEhFIElNUExJRUQgV0FS
UkFOVElFUyBPRiAgICAgICoKLSAqIE1FUkNIQU5UQUJJTElUWSBBTkQgRklUTkVTUyBGT1IgQSBQ
QVJUSUNVTEFSIFBVUlBPU0UuICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAqCiAgKiBodHRwOi8vd3d3LmNoZWxzaW8uY29tICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2Ivc3VuaTF4MTBnZXhwX3JlZ3MuaAor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jaGVsc2lvL2N4Z2Ivc3VuaTF4MTBnZXhwX3JlZ3Mu
aApAQCAtMSwzICsxLDQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9u
bHkgKi8KIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCiAgKiBG
aWxlOiBzdW5pMXgxMGdleHBfcmVncy5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICoKQEAgLTcsMTYgKzgsNiBAQAogICogIFBNQy9TSUVSUkEgKHBtMzM5
MykgTUFDLVBIWSBmdW5jdGlvbmFsaXR5LiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
CiAgKiAgcGFydCBvZiB0aGUgQ2hlbHNpbyAxMEdiIEV0aGVybmV0IERyaXZlci4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICoKICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgotICogVGhpcyBw
cm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBt
b2RpZnkgICAgICAqCi0gKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1
YmxpYyBMaWNlbnNlLCB2ZXJzaW9uIDIsIGFzICAgICAgICoKLSAqIHB1Ymxpc2hlZCBieSB0aGUg
RnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBj
b3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhbG9uZyAgICoKLSAqIHdpdGgg
dGhpcyBwcm9ncmFtOyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4u
ICAgICAgICAgICAgKgotICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqCi0gKiBUSElTIFNPRlRXQVJFIElT
IFBST1ZJREVEIGBgQVMgSVMnJyBBTkQgV0lUSE9VVCBBTlkgRVhQUkVTUyBPUiBJTVBMSUVEICAg
ICoKLSAqIFdBUlJBTlRJRVMsIElOQ0xVRElORywgV0lUSE9VVCBMSU1JVEFUSU9OLCBUSEUgSU1Q
TElFRCBXQVJSQU5USUVTIE9GICAgICAgKgotICogTUVSQ0hBTlRBQklMSVRZIEFORCBGSVRORVNT
IEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gICAgICAgICAgICAgICAgICAgICAqCiAgKiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICoKICAqIGh0dHA6Ly93d3cuY2hlbHNpby5jb20gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKgogICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAqCkBAIC0xNjM5LDQgKzE2MzAsMyBAQAogI2RlZmluZSBTVU5JMXgxMEdFWFBfQklUTVNLX1BM
NElEVV9ESVA0SSAgICAgICAweDAwMDIKIAogI2VuZGlmIC8qIF9DWEdCX1NVTkkxeDEwR0VYUF9S
RUdTX0hfICovCi0KCg==
