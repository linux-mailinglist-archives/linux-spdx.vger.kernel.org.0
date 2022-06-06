Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1132153EF02
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232916AbiFFT7C (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:59:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232819AbiFFT6w (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:52 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BBA330557
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:49 -0700 (PDT)
Message-ID: <20220606195512.820806717@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545527;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=B2op/mEmz46slyIOq4mrXUMGEn0tUpTHaYWTybnXKmM=;
        b=AuVdkabSEjRoB+bXyDRX5hgtcixWLPW6zhaTFkTa+jv1wEcgav9wKw4P3GcGs4RtVjeUPw
        s/nkDIlPZXxIe3YvNJ4DKU8JSO61nuZ0l0kDOdPvIDTWDdSTz0Ylpr3sTnFvwbvNMBFvT6
        Quw1d/ZPS+DA4Lx6ysRP2NRgBl7WsZ2vODeSJk/y6dNfCtPU2k9UcZFxEZw6tp84925qPm
        PI1msDtSiux3ANLrvmLETkeJdTN/6xU6E6QTtT2TZwdD8Bwy2YgM0nmbzf0YSipXp94t0A
        0Ro/fNXv/lnVx0MEnDZpzxQg/m22wWI9cdgNsY9CpMkQmHbyI3poH9OAiM1d4Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545527;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=B2op/mEmz46slyIOq4mrXUMGEn0tUpTHaYWTybnXKmM=;
        b=Lq9lmjEvkGZJBDhGXS87ehCeVpfrMKrjBlzfHfNjHpqMF2Bu3Ilu5fE/qn4M2dI+ZvwJzr
        St3GQRxpnwF+KICg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 16/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_318.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:47 +0200 (CEST)
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
ICAgIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgZ251IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UgYXMg
cHVibGlzaGVkIGJ5IHRoZQogICAgZnJlZSBzb2Z0d2FyZSBmb3VuZGF0aW9uIHZlcnNpb24gMiAg
dGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkIGFzIGlzCiAgICB3aXRob3V0IGFueSB3YXJyYW50
eSBvZiBhbnkga2luZCB3aGV0aGVyIGV4cHJlc3Mgb3IgaW1wbGllZCB3aXRob3V0CiAgICBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mIG1lcmNoYW50YWJpbGl0eSBvciBmaXRuZXNzIGZvciBh
CiAgICBwYXJ0aWN1bGFyIHB1cnBvc2Ugc2VlIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMgbGljZW5z
ZSBmb3IgbW9yZSBkZXRhaWxzCiAgICB5b3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9m
IHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMgbGljZW5zZQogICAgYWxvbmcgd2l0aCB0aGlzIHByb2dy
YW0gaWYgbm90IHdyaXRlIHRvIHRoZSBmcmVlIHNvZnR3YXJlIGZvdW5kYXRpb24KICAgIGluYyA1
OSB0ZW1wbGUgcGxhY2Ugc3VpdGUgMzMwIGJvc3RvbiBtYSAwMjExMS0xMzA3IHVzYQoKZXh0cmFj
dGVkIGJ5IHRoZSBzY2FuY29kZSBsaWNlbnNlIHNjYW5uZXIgdGhlIFNQRFggbGljZW5zZSBpZGVu
dGlmaWVyCgogICAgR1BMLTIuMC1vbmx5CgpoYXMgYmVlbiBjaG9zZW4gdG8gcmVwbGFjZSB0aGUg
Ym9pbGVycGxhdGUvcmVmZXJlbmNlLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEdsZWl4bmVyIDx0
Z2x4QGxpbnV0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXMzNzIyLmMg
ICAgICAgfCAgIDE1ICstLS0tLS0tLS0tLS0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcGFs
bWFzLmMgICAgICAgfCAgIDE1ICstLS0tLS0tLS0tLS0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtdXRpbHMuYyAgICAgICAgfCAgIDE1ICstLS0tLS0tLS0tLS0tLQogZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtdXRpbHMuaCAgICAgICAgfCAgIDE1ICstLS0tLS0tLS0tLS0tLQogZHJpdmVycy9y
ZWd1bGF0b3IvbWF4ODk3My1yZWd1bGF0b3IuYyAgfCAgIDE1ICstLS0tLS0tLS0tLS0tLQogZHJp
dmVycy9yZWd1bGF0b3IvdHBzNTE2MzItcmVndWxhdG9yLmMgfCAgIDE1ICstLS0tLS0tLS0tLS0t
LQogZHJpdmVycy9yZWd1bGF0b3IvdHBzNjIzNjAtcmVndWxhdG9yLmMgfCAgIDE1ICstLS0tLS0t
LS0tLS0tLQogNyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDk4IGRlbGV0aW9ucygt
KQoKLS0tIGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXMzNzIyLmMKKysrIGIvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtYXMzNzIyLmMKQEAgLTEsMjMgKzEsMTAgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIC8qCiAgKiBhbXMgQVMzNzIyIHBpbiBjb250cm9s
IGFuZCBHUElPIGRyaXZlci4KICAqCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTMsIE5WSURJQSBDb3Jw
b3JhdGlvbi4KICAqCiAgKiBBdXRob3I6IExheG1hbiBEZXdhbmdhbiA8bGRld2FuZ2FuQG52aWRp
YS5jb20+Ci0gKgotICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVk
aXN0cmlidXRlIGl0IGFuZC9vcgotICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUg
R05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBT
b2Z0d2FyZSBGb3VuZGF0aW9uIHZlcnNpb24gMi4KLSAqCi0gKiBUaGlzIHByb2dyYW0gaXMgZGlz
dHJpYnV0ZWQgImFzIGlzIiBXSVRIT1VUIEFOWSBXQVJSQU5UWSBvZiBhbnkga2luZCwKLSAqIHdo
ZXRoZXIgZXhwcmVzcyBvciBpbXBsaWVkOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFu
dHkgb2YKLSAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVS
UE9TRS4gIFNlZSB0aGUgR05VCi0gKiBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRl
dGFpbHMuCi0gKgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtOyBpZiBu
b3QsIHdyaXRlIHRvIHRoZSBGcmVlIFNvZnR3YXJlCi0gKiBGb3VuZGF0aW9uLCBJbmMuLCA1OSBU
ZW1wbGUgUGxhY2UsIFN1aXRlIDMzMCwgQm9zdG9uLCBNQQotICogMDIxMTEtMTMwNywgVVNBCiAg
Ki8KIAogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXBhbG1hcy5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXBhbG1hcy5jCkBAIC0x
LDIzICsxLDEwIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAv
KgogICogcGluY3RybC1wYWxtYXMuYyAtLSBUSSBQQUxNQVMgc2VyaWVzIHBpbiBjb250cm9sIGRy
aXZlci4KICAqCiAgKiBDb3B5cmlnaHQgKGMpIDIwMTMsIE5WSURJQSBDb3Jwb3JhdGlvbi4KICAq
CiAgKiBBdXRob3I6IExheG1hbiBEZXdhbmdhbiA8bGRld2FuZ2FuQG52aWRpYS5jb20+Ci0gKgot
ICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0
IGFuZC9vcgotICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwg
UHVibGljIExpY2Vuc2UgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3Vu
ZGF0aW9uIHZlcnNpb24gMi4KLSAqCi0gKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgImFz
IGlzIiBXSVRIT1VUIEFOWSBXQVJSQU5UWSBvZiBhbnkga2luZCwKLSAqIHdoZXRoZXIgZXhwcmVz
cyBvciBpbXBsaWVkOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKLSAqIE1F
UkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0
aGUgR05VCi0gKiBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCi0gKgot
ICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVi
bGljIExpY2Vuc2UKLSAqIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtOyBpZiBub3QsIHdyaXRlIHRv
IHRoZSBGcmVlIFNvZnR3YXJlCi0gKiBGb3VuZGF0aW9uLCBJbmMuLCA1OSBUZW1wbGUgUGxhY2Us
IFN1aXRlIDMzMCwgQm9zdG9uLCBNQQotICogMDIxMTEtMTMwNywgVVNBCiAgKi8KIAogI2luY2x1
ZGUgPGxpbnV4L2RlbGF5Lmg+Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXV0aWxzLmMK
KysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtdXRpbHMuYwpAQCAtMSwyMyArMSwxMCBAQAor
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQogLyoKICAqIFV0aWxzIGZ1
bmN0aW9ucyB0byBpbXBsZW1lbnQgdGhlIHBpbmNvbnRyb2wgZHJpdmVyLgogICoKICAqIENvcHly
aWdodCAoYykgMjAxMywgTlZJRElBIENvcnBvcmF0aW9uLgogICoKICAqIEF1dGhvcjogTGF4bWFu
IERld2FuZ2FuIDxsZGV3YW5nYW5AbnZpZGlhLmNvbT4KLSAqCi0gKiBUaGlzIHByb2dyYW0gaXMg
ZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yCi0gKiBtb2RpZnkg
aXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcwot
ICogcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24gdmVyc2lvbiAyLgot
ICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCAiYXMgaXMiIFdJVEhPVVQgQU5ZIFdB
UlJBTlRZIG9mIGFueSBraW5kLAotICogd2hldGhlciBleHByZXNzIG9yIGltcGxpZWQ7IHdpdGhv
dXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgotICogTUVSQ0hBTlRBQklMSVRZIG9yIEZJ
VE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZSBHTlUKLSAqIEdlbmVyYWwg
UHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KLSAqCi0gKiBZb3Ugc2hvdWxkIGhhdmUg
cmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQotICogYWxv
bmcgd2l0aCB0aGlzIHByb2dyYW07IGlmIG5vdCwgd3JpdGUgdG8gdGhlIEZyZWUgU29mdHdhcmUK
LSAqIEZvdW5kYXRpb24sIEluYy4sIDU5IFRlbXBsZSBQbGFjZSwgU3VpdGUgMzMwLCBCb3N0b24s
IE1BCi0gKiAwMjExMS0xMzA3LCBVU0EKICAqLwogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgog
I2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgotLS0gYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC11
dGlscy5oCisrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXV0aWxzLmgKQEAgLTEsMjMgKzEs
MTAgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KIC8qCiAg
KiBVdGlscyBmdW5jdGlvbnMgdG8gaW1wbGVtZW50IHRoZSBwaW5jb250cm9sIGRyaXZlci4KICAq
CiAgKiBDb3B5cmlnaHQgKGMpIDIwMTMsIE5WSURJQSBDb3Jwb3JhdGlvbi4KICAqCiAgKiBBdXRo
b3I6IExheG1hbiBEZXdhbmdhbiA8bGRld2FuZ2FuQG52aWRpYS5jb20+Ci0gKgotICogVGhpcyBw
cm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgot
ICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExp
Y2Vuc2UgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uIHZl
cnNpb24gMi4KLSAqCi0gKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgImFzIGlzIiBXSVRI
T1VUIEFOWSBXQVJSQU5UWSBvZiBhbnkga2luZCwKLSAqIHdoZXRoZXIgZXhwcmVzcyBvciBpbXBs
aWVkOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKLSAqIE1FUkNIQU5UQUJJ
TElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCi0g
KiBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCi0gKgotICogWW91IHNo
b3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vu
c2UKLSAqIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtOyBpZiBub3QsIHdyaXRlIHRvIHRoZSBGcmVl
IFNvZnR3YXJlCi0gKiBGb3VuZGF0aW9uLCBJbmMuLCA1OSBUZW1wbGUgUGxhY2UsIFN1aXRlIDMz
MCwgQm9zdG9uLCBNQQotICogMDIxMTEtMTMwNywgVVNBCiAgKi8KICNpZm5kZWYgX19QSU5DVFJM
X1VUSUxTX0hfXwogI2RlZmluZSBfX1BJTkNUUkxfVVRJTFNfSF9fCi0tLSBhL2RyaXZlcnMvcmVn
dWxhdG9yL21heDg5NzMtcmVndWxhdG9yLmMKKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvbWF4ODk3
My1yZWd1bGF0b3IuYwpAQCAtMSwzICsxLDQgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkKIC8qCiAgKiBtYXg4OTczLXJlZ3VsYXRvci5jIC0tIE1heGltIG1heDg5
NzNBCiAgKgpAQCAtNiwyMCArNyw2IEBACiAgKiBDb3B5cmlnaHQgKGMpIDIwMTIsIE5WSURJQSBD
b3Jwb3JhdGlvbi4KICAqCiAgKiBBdXRob3I6IExheG1hbiBEZXdhbmdhbiA8bGRld2FuZ2FuQG52
aWRpYS5jb20+Ci0gKgotICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4g
cmVkaXN0cmlidXRlIGl0IGFuZC9vcgotICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0
aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJl
ZSBTb2Z0d2FyZSBGb3VuZGF0aW9uIHZlcnNpb24gMi4KLSAqCi0gKiBUaGlzIHByb2dyYW0gaXMg
ZGlzdHJpYnV0ZWQgImFzIGlzIiBXSVRIT1VUIEFOWSBXQVJSQU5UWSBvZiBhbnkga2luZCwKLSAq
IHdoZXRoZXIgZXhwcmVzcyBvciBpbXBsaWVkOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2Fy
cmFudHkgb2YKLSAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIg
UFVSUE9TRS4gIFNlZSB0aGUgR05VCi0gKiBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3Jl
IGRldGFpbHMuCi0gKgotICogWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUg
R05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIGFsb25nIHdpdGggdGhpcyBwcm9ncmFtOyBp
ZiBub3QsIHdyaXRlIHRvIHRoZSBGcmVlIFNvZnR3YXJlCi0gKiBGb3VuZGF0aW9uLCBJbmMuLCA1
OSBUZW1wbGUgUGxhY2UsIFN1aXRlIDMzMCwgQm9zdG9uLCBNQQotICogMDIxMTEtMTMwNywgVVNB
CiAgKi8KIAogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgotLS0gYS9kcml2ZXJzL3JlZ3VsYXRv
ci90cHM1MTYzMi1yZWd1bGF0b3IuYworKysgYi9kcml2ZXJzL3JlZ3VsYXRvci90cHM1MTYzMi1y
ZWd1bGF0b3IuYwpAQCAtMSwzICsxLDQgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkKIC8qCiAgKiB0cHM1MTYzMi1yZWd1bGF0b3IuYyAtLSBUSSBUUFM1MTYzMgog
ICoKQEAgLTcsMjAgKzgsNiBAQAogICogQ29weXJpZ2h0IChjKSAyMDEyLCBOVklESUEgQ29ycG9y
YXRpb24uCiAgKgogICogQXV0aG9yOiBMYXhtYW4gRGV3YW5nYW4gPGxkZXdhbmdhbkBudmlkaWEu
Y29tPgotICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlz
dHJpYnV0ZSBpdCBhbmQvb3IKLSAqIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdO
VSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFzCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29m
dHdhcmUgRm91bmRhdGlvbiB2ZXJzaW9uIDIuCi0gKgotICogVGhpcyBwcm9ncmFtIGlzIGRpc3Ry
aWJ1dGVkICJhcyBpcyIgV0lUSE9VVCBBTlkgV0FSUkFOVFkgb2YgYW55IGtpbmQsCi0gKiB3aGV0
aGVyIGV4cHJlc3Mgb3IgaW1wbGllZDsgd2l0aG91dCBldmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5
IG9mCi0gKiBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBP
U0UuICBTZWUgdGhlIEdOVQotICogR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRh
aWxzLgotICoKLSAqIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBH
ZW5lcmFsIFB1YmxpYyBMaWNlbnNlCi0gKiBhbG9uZyB3aXRoIHRoaXMgcHJvZ3JhbTsgaWYgbm90
LCB3cml0ZSB0byB0aGUgRnJlZSBTb2Z0d2FyZQotICogRm91bmRhdGlvbiwgSW5jLiwgNTkgVGVt
cGxlIFBsYWNlLCBTdWl0ZSAzMzAsIEJvc3RvbiwgTUEKLSAqIDAyMTExLTEzMDcsIFVTQQogICov
CiAKICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KLS0tIGEvZHJpdmVycy9yZWd1bGF0b3IvdHBzNjIz
NjAtcmVndWxhdG9yLmMKKysrIGIvZHJpdmVycy9yZWd1bGF0b3IvdHBzNjIzNjAtcmVndWxhdG9y
LmMKQEAgLTEsMyArMSw0IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
bmx5CiAvKgogICogdHBzNjIzNjAuYyAtLSBUSSB0cHM2MjM2MAogICoKQEAgLTYsMjAgKzcsNiBA
QAogICogQ29weXJpZ2h0IChjKSAyMDEyLCBOVklESUEgQ29ycG9yYXRpb24uCiAgKgogICogQXV0
aG9yOiBMYXhtYW4gRGV3YW5nYW4gPGxkZXdhbmdhbkBudmlkaWEuY29tPgotICoKLSAqIFRoaXMg
cHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IK
LSAqIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBM
aWNlbnNlIGFzCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiB2
ZXJzaW9uIDIuCi0gKgotICogVGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkICJhcyBpcyIgV0lU
SE9VVCBBTlkgV0FSUkFOVFkgb2YgYW55IGtpbmQsCi0gKiB3aGV0aGVyIGV4cHJlc3Mgb3IgaW1w
bGllZDsgd2l0aG91dCBldmVuIHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCi0gKiBNRVJDSEFOVEFC
SUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlIEdOVQot
ICogR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgotICoKLSAqIFlvdSBz
aG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNl
bnNlCi0gKiBhbG9uZyB3aXRoIHRoaXMgcHJvZ3JhbTsgaWYgbm90LCB3cml0ZSB0byB0aGUgRnJl
ZSBTb2Z0d2FyZQotICogRm91bmRhdGlvbiwgSW5jLiwgNTkgVGVtcGxlIFBsYWNlLCBTdWl0ZSAz
MzAsIEJvc3RvbiwgTUEKLSAqIDAyMTExLTEzMDcsIFVTQQogICovCiAKICNpbmNsdWRlIDxsaW51
eC9rZXJuZWwuaD4KCg==
