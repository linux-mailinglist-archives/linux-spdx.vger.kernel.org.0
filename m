Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10D0A53EEF8
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232850AbiFFT6g (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232786AbiFFT6d (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:33 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A0BE2A738
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:32 -0700 (PDT)
Message-ID: <20220606195512.178443152@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545510;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=qsFHQ2Ac+mTDuMkb1xaDFJazm78GkeddwqsVE56FiHA=;
        b=g31XgB/oKSGtZ0eCyvkj1wIXqGUp9CsDksWyNEWOix9FF/rqxyPW6ZlOC/8Cj4HY4OVdrK
        fp+88C2Ist3ondqvCcpWUGkYcknsNfPZgV8mOfYe41Z7dB3BYDEauGuPQ9uEDirqgl/c4a
        kHW3y4ITGIx8C5X8Wv7u9tYy4xdCxYuaealRK4PGGl0oNskny4I138zOsEu2KjrzzRyXSq
        4GFb/v2iK10R5E37eWUnAV5dnDS82V2sly7NzwornDF3zG8fMtlh2K6aPhbLYnL048I/sn
        1rplPFAwCZ5eTg6SMlYlDfQrLKI7naZVGuV8dpKq0neMvGBJjGk/b+0CcarHIg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545510;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=qsFHQ2Ac+mTDuMkb1xaDFJazm78GkeddwqsVE56FiHA=;
        b=7o11EoXecHhS5c0moQI1lKVCuzPLQjO5FOPOVQ0Dfwez50K/a84cYJwhGIDNyz4E5ekxi+
        Gl7NW2Mu4l/TGnCw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 05/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_133.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:30 +0200 (CEST)
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
dGhpcyBwcm9ncmFtIGlzIGRpc3RyaWJ1dGVkCiAgICBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwg
YmUgdXNlZnVsIG1lcmNoYW50YWJpbGl0eSBvciBmaXRuZXNzIGZvciBhCiAgICBwYXJ0aWN1bGFy
IHB1cnBvc2Ugc2VlIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMgbGljZW5zZSBmb3IgbW9yZSBkZXRh
aWxzCgpleHRyYWN0ZWQgYnkgdGhlIHNjYW5jb2RlIGxpY2Vuc2Ugc2Nhbm5lciB0aGUgU1BEWCBs
aWNlbnNlIGlkZW50aWZpZXIKCiAgICBHUEwtMi4wLW9ubHkKCmhhcyBiZWVuIGNob3NlbiB0byBy
ZXBsYWNlIHRoZSBib2lsZXJwbGF0ZS9yZWZlcmVuY2UuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMg
R2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210Njc1NS5kdHNpIHwgICAgOSArLS0tLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ2Nzk1LmR0c2kgfCAgICA5ICstLS0tLS0tLQogYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDgxNzMuZHRzaSB8ICAgIDkgKy0tLS0tLS0tCiBpbmNsdWRlL2R0LWJpbmRp
bmdzL3Bvd2VyL210Njc5Ny1wb3dlci5oIHwgICAgOSArLS0tLS0tLS0KIDQgZmlsZXMgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkKCi0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ2NzU1LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDY3NTUuZHRzaQpAQCAtMSwxNCArMSw3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5CiAvKgogICogQ29weXJpZ2h0IChjKSAyMDE2IE1lZGlhVGVrIElu
Yy4KICAqIEF1dGhvcjogTWFycy5DIDxtYXJzLmNoZW5nQG1lZGlhdGVrLmNvbT4KLSAqCi0gKiBU
aGlzIHByb2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5k
L29yIG1vZGlmeQotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJs
aWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2Fy
ZSBGb3VuZGF0aW9uLgotICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUg
aG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAotICogTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5F
U1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICogR05VIEdlbmVyYWwgUHVi
bGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KICAqLwogCiAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ2Nzk1LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9t
dDY3OTUuZHRzaQpAQCAtMSwxNCArMSw3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5CiAvKgogICogQ29weXJpZ2h0IChjKSAyMDE1IE1lZGlhVGVrIEluYy4KICAq
IEF1dGhvcjogTWFycy5DIDxtYXJzLmNoZW5nQG1lZGlhdGVrLmNvbT4KLSAqCi0gKiBUaGlzIHBy
b2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1v
ZGlmeQotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSB2ZXJzaW9uIDIgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3Vu
ZGF0aW9uLgotICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0
aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAotICogTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9S
IEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICogR05VIEdlbmVyYWwgUHVibGljIExp
Y2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KICAqLwogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4MTczLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMu
ZHRzaQpAQCAtMSwxNCArMSw3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vbmx5CiAvKgogICogQ29weXJpZ2h0IChjKSAyMDE0IE1lZGlhVGVrIEluYy4KICAqIEF1dGhv
cjogRWRkaWUgSHVhbmcgPGVkZGllLmh1YW5nQG1lZGlhdGVrLmNvbT4KLSAqCi0gKiBUaGlzIHBy
b2dyYW0gaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1v
ZGlmeQotICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSB2ZXJzaW9uIDIgYXMKLSAqIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3Vu
ZGF0aW9uLgotICoKLSAqIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0
aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAotICogTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9S
IEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICogR05VIEdlbmVyYWwgUHVibGljIExp
Y2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KICAqLwogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xv
Y2svbXQ4MTczLWNsay5oPgotLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL210Njc5Ny1w
b3dlci5oCisrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvbXQ2Nzk3LXBvd2VyLmgKQEAg
LTEsMTQgKzEsNyBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAq
LwogLyoKICAqIENvcHlyaWdodCAoYykgMjAxNyBNZWRpYVRlayBJbmMuCiAgKiBBdXRob3I6IE1h
cnMuQyA8bWFycy5jaGVuZ0BtZWRpYXRlay5jb20+Ci0gKgotICogVGhpcyBwcm9ncmFtIGlzIGZy
ZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKLSAqIGl0
IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lv
biAyIGFzCi0gKiBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbi4KLSAq
Ci0gKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3aWxs
IGJlIHVzZWZ1bCwKLSAqIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VM
QVIgUFVSUE9TRS4gIFNlZSB0aGUKLSAqIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBt
b3JlIGRldGFpbHMuCiAgKi8KIAogI2lmbmRlZiBfRFRfQklORElOR1NfUE9XRVJfTVQ2Nzk3X1BP
V0VSX0gKCg==
