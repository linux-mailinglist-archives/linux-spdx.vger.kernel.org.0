Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A34625400CE
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235717AbiFGOL1 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245139AbiFGOLZ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:25 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67F2A7748
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:24 -0700 (PDT)
Message-ID: <20220607131511.002596211@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611083;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:  references:references;
        bh=AZX01KgUT6nL2H4Rjg4BXjowfIFtxaBO+CzPdXG3RvQ=;
        b=Gn0yDoZlA4bao9R9JE/eIzJ35hb2RRGCEFyPEsJJ+yFrXgNeOD+VCPQtfL57deN5WoB7Gy
        S24iG29/5SKYu5lz+iT6QANyx0nX1GzIkdDlZWKAN0mGGmBfi4OiBTxS2fE7Dn08MjbQhg
        KK2AEgWzNpyLdxfWD6gh5iBBgZJy5QgB4g6OXtmImE3JE29zLA2VhIPHm3yfjNHNFDuYDj
        NfgWfAuYcr5m9WyVkVOciz52CAhBJBK1UjZLIVWttWRqN4J0Uhf1L5TFFeOtV3xZV3p4jS
        MoRIR6KwkjLnDddwB+DtfrZcTtQZc3AOf22nU3UhjqnoAeQoWN0MIl5/IQlnKg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611083;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:  references:references;
        bh=AZX01KgUT6nL2H4Rjg4BXjowfIFtxaBO+CzPdXG3RvQ=;
        b=ggGoaVX8H0BMqK7a+jJgFOKX68zk0f1oKvlwmaPeuq+qFPvzzj9NCZs9UqP3+XJq7KFu0q
        YJJIXb3eQBPgw+Dg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 11/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_160.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Tue,  7 Jun 2022 16:11:23 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

QmFzZWQgb24gdGhlIG5vcm1hbGl6ZWQgcGF0dGVybjoKCiAgICB0aGUgY29kZSBjb250YWluZWQg
aGVyZWluIGlzIGxpY2Vuc2VkIHVuZGVyIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMKICAgIGxpY2Vu
c2UgeW91IG1heSBvYnRhaW4gYSBjb3B5IG9mIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMgbGljZW5z
ZQogICAgdmVyc2lvbiAyIGF0IHRoZSBmb2xsb3dpbmcgbG9jYXRpb25zOiAgaHR0cDovL3d3dyBv
cGVuc291cmNlCiAgICBvcmcvbGljZW5zZXMvZ3BsLWxpY2Vuc2UgaHRtbCBodHRwOi8vd3d3IGdu
dSBvcmcvY29weWxlZnQvZ3BsIGh0bWwKCmV4dHJhY3RlZCBieSB0aGUgc2NhbmNvZGUgbGljZW5z
ZSBzY2FubmVyIHRoZSBTUERYIGxpY2Vuc2UgaWRlbnRpZmllcgoKICAgIEdQTC0yLjAtb25seQoK
aGFzIGJlZW4gY2hvc2VuIHRvIHJlcGxhY2UgdGhlIGJvaWxlcnBsYXRlL3JlZmVyZW5jZS4KClNp
Z25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpSZXZpZXdl
ZC1ieTogQWxsaXNvbiBSYW5kYWwgPGFsbGlzb25AbG9odXRvay5uZXQ+Ci0tLQogYXJjaC9hcm0v
Ym9vdC9kdHMvaW14MjMtcGluZnVuYy5oIHwgICAgOCArLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvaW14MjgtcGluZnVuYy5oIHwgICAgOCArLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9kdHMvbXhz
LXBpbmZ1bmMuaCAgIHwgICAgOCArLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIxIGRlbGV0aW9ucygtKQoKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14MjMtcGlu
ZnVuYy5oCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDIzLXBpbmZ1bmMuaApAQCAtMSwxNCAr
MSw4IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCiAvKgog
ICogSGVhZGVyIHByb3ZpZGluZyBjb25zdGFudHMgZm9yIGkuTVgyMyBwaW5jdHJsIGJpbmRpbmdz
LgogICoKICAqIENvcHlyaWdodCAoQykgMjAxMyBMb3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxl
Y3Ryb25pY3MuZGU+Ci0gKgotICogVGhlIGNvZGUgY29udGFpbmVkIGhlcmVpbiBpcyBsaWNlbnNl
ZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNlLiBZb3UgbWF5IG9idGFp
biBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlCi0gKiBWZXJzaW9uIDIg
YXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6Ci0gKgotICogaHR0cDovL3d3dy5vcGVuc291cmNl
Lm9yZy9saWNlbnNlcy9ncGwtbGljZW5zZS5odG1sCi0gKiBodHRwOi8vd3d3LmdudS5vcmcvY29w
eWxlZnQvZ3BsLmh0bWwKICAqLwogCiAjaWZuZGVmIF9fRFRfQklORElOR1NfTVgyM19QSU5DVFJM
X0hfXwotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXgyOC1waW5mdW5jLmgKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14MjgtcGluZnVuYy5oCkBAIC0xLDE0ICsxLDggQEAKKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KIC8qCiAgKiBIZWFkZXIgcHJvdmlkaW5n
IGNvbnN0YW50cyBmb3IgaS5NWDI4IHBpbmN0cmwgYmluZGluZ3MuCiAgKgogICogQ29weXJpZ2h0
IChDKSAyMDEzIExvdGhhciBXYcOfbWFubiA8TFdAS0FSTy1lbGVjdHJvbmljcy5kZT4KLSAqCi0g
KiBUaGUgY29kZSBjb250YWluZWQgaGVyZWluIGlzIGxpY2Vuc2VkIHVuZGVyIHRoZSBHTlUgR2Vu
ZXJhbCBQdWJsaWMKLSAqIExpY2Vuc2UuIFlvdSBtYXkgb2J0YWluIGEgY29weSBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIFZlcnNpb24gMiBhdCB0aGUgZm9sbG93aW5nIGxv
Y2F0aW9uczoKLSAqCi0gKiBodHRwOi8vd3d3Lm9wZW5zb3VyY2Uub3JnL2xpY2Vuc2VzL2dwbC1s
aWNlbnNlLmh0bWwKLSAqIGh0dHA6Ly93d3cuZ251Lm9yZy9jb3B5bGVmdC9ncGwuaHRtbAogICov
CiAKICNpZm5kZWYgX19EVF9CSU5ESU5HU19NWDI4X1BJTkNUUkxfSF9fCi0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL214cy1waW5mdW5jLmgKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbXhzLXBpbmZ1
bmMuaApAQCAtMSwxNCArMSw4IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vbmx5ICovCiAvKgogICogSGVhZGVyIHByb3ZpZGluZyBjb25zdGFudHMgZm9yIGkuTVgyOCBw
aW5jdHJsIGJpbmRpbmdzLgogICoKICAqIENvcHlyaWdodCAoQykgMjAxMyBMb3RoYXIgV2HDn21h
bm4gPExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+Ci0gKgotICogVGhlIGNvZGUgY29udGFpbmVkIGhl
cmVpbiBpcyBsaWNlbnNlZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNl
LiBZb3UgbWF5IG9idGFpbiBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
Ci0gKiBWZXJzaW9uIDIgYXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6Ci0gKgotICogaHR0cDov
L3d3dy5vcGVuc291cmNlLm9yZy9saWNlbnNlcy9ncGwtbGljZW5zZS5odG1sCi0gKiBodHRwOi8v
d3d3LmdudS5vcmcvY29weWxlZnQvZ3BsLmh0bWwKICAqLwogCiAjaWZuZGVmIF9fRFRfQklORElO
R1NfTVhTX1BJTkNUUkxfSF9fCgo=
