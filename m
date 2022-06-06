Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FA1C53EEFC
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232302AbiFFT6l (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232740AbiFFT6j (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:39 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 455F312AE7
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:38 -0700 (PDT)
Message-ID: <20220606195512.408516642@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545517;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ccWpL9F8TVENhea/NfirgjF0I28s8bejSQjtmsFeAIA=;
        b=42wme41eZDzWDisQ4WP8ekNME0azaGl1YhgtUNVLDbROu/pdkriYUd3c1aMBYct6oYkfKb
        HVpfgpmEuJIxWVKDUh7hpp88hpDRy6N3Tp0aOvSDvMgcKyJTq4PwV1RUXnRLOZH8QTLKc5
        Tem8Y4YcRVwJFK2BH+qXaNVz8SB8Yo2OZMVKazsl1n66uKdxVwTecBh4yH0EoqHVsvd51W
        p7ASFZHi/yuushjvkVwO/bQtCwvUmBpht7eVqq9pqQ4E67tAaKaVmTYS7QWhGWuENVYX5c
        743yQIeObp+t7W1QzRLNDS4xzj8OjzbPbEY5DmyE05F/PfmE4DcQo4icbo6wmw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545517;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ccWpL9F8TVENhea/NfirgjF0I28s8bejSQjtmsFeAIA=;
        b=RD35uT5oc1dXni6WP+bRpO7XitJrhsAUe2ipGUPUpE/iKzW3DyUly9uJ9MGGU0WLO0lorT
        rhVN/WiLH6toZWBQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 09/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_160.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:36 +0200 (CEST)
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
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoZSBjb2RlIGNvbnRh
aW5lZCBoZXJlaW4gaXMgbGljZW5zZWQgdW5kZXIgdGhlIGdudSBnZW5lcmFsIHB1YmxpYwogICAg
bGljZW5zZSB5b3UgbWF5IG9idGFpbiBhIGNvcHkgb2YgdGhlIGdudSBnZW5lcmFsIHB1YmxpYyBs
aWNlbnNlCiAgICB2ZXJzaW9uIDIgYXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6ICBodHRwOi8v
d3d3IG9wZW5zb3VyY2UKICAgIG9yZy9saWNlbnNlcy9ncGwtbGljZW5zZSBodG1sIGh0dHA6Ly93
d3cgZ251IG9yZy9jb3B5bGVmdC9ncGwgaHRtbAoKZXh0cmFjdGVkIGJ5IHRoZSBzY2FuY29kZSBs
aWNlbnNlIHNjYW5uZXIgdGhlIFNQRFggbGljZW5zZSBpZGVudGlmaWVyCgogICAgR1BMLTIuMC1v
bmx5CgpoYXMgYmVlbiBjaG9zZW4gdG8gcmVwbGFjZSB0aGUgYm9pbGVycGxhdGUvcmVmZXJlbmNl
LgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ci0t
LQogYXJjaC9hcm0vYm9vdC9kdHMvaW14MjMtcGluZnVuYy5oIHwgICAgOCArLS0tLS0tLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14MjgtcGluZnVuYy5oIHwgICAgOCArLS0tLS0tLQogYXJjaC9hcm0v
Ym9vdC9kdHMvbXhzLXBpbmZ1bmMuaCAgIHwgICAgOCArLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14MjMtcGluZnVuYy5oCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDIzLXBpbmZ1bmMu
aApAQCAtMSwxNCArMSw4IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
bmx5ICovCiAvKgogICogSGVhZGVyIHByb3ZpZGluZyBjb25zdGFudHMgZm9yIGkuTVgyMyBwaW5j
dHJsIGJpbmRpbmdzLgogICoKICAqIENvcHlyaWdodCAoQykgMjAxMyBMb3RoYXIgV2HDn21hbm4g
PExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+Ci0gKgotICogVGhlIGNvZGUgY29udGFpbmVkIGhlcmVp
biBpcyBsaWNlbnNlZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNlLiBZ
b3UgbWF5IG9idGFpbiBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlCi0g
KiBWZXJzaW9uIDIgYXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6Ci0gKgotICogaHR0cDovL3d3
dy5vcGVuc291cmNlLm9yZy9saWNlbnNlcy9ncGwtbGljZW5zZS5odG1sCi0gKiBodHRwOi8vd3d3
LmdudS5vcmcvY29weWxlZnQvZ3BsLmh0bWwKICAqLwogCiAjaWZuZGVmIF9fRFRfQklORElOR1Nf
TVgyM19QSU5DVFJMX0hfXwotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXgyOC1waW5mdW5jLmgK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14MjgtcGluZnVuYy5oCkBAIC0xLDE0ICsxLDggQEAK
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KIC8qCiAgKiBIZWFk
ZXIgcHJvdmlkaW5nIGNvbnN0YW50cyBmb3IgaS5NWDI4IHBpbmN0cmwgYmluZGluZ3MuCiAgKgog
ICogQ29weXJpZ2h0IChDKSAyMDEzIExvdGhhciBXYcOfbWFubiA8TFdAS0FSTy1lbGVjdHJvbmlj
cy5kZT4KLSAqCi0gKiBUaGUgY29kZSBjb250YWluZWQgaGVyZWluIGlzIGxpY2Vuc2VkIHVuZGVy
IHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMKLSAqIExpY2Vuc2UuIFlvdSBtYXkgb2J0YWluIGEgY29w
eSBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIFZlcnNpb24gMiBhdCB0aGUg
Zm9sbG93aW5nIGxvY2F0aW9uczoKLSAqCi0gKiBodHRwOi8vd3d3Lm9wZW5zb3VyY2Uub3JnL2xp
Y2Vuc2VzL2dwbC1saWNlbnNlLmh0bWwKLSAqIGh0dHA6Ly93d3cuZ251Lm9yZy9jb3B5bGVmdC9n
cGwuaHRtbAogICovCiAKICNpZm5kZWYgX19EVF9CSU5ESU5HU19NWDI4X1BJTkNUUkxfSF9fCi0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL214cy1waW5mdW5jLmgKKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvbXhzLXBpbmZ1bmMuaApAQCAtMSwxNCArMSw4IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5ICovCiAvKgogICogSGVhZGVyIHByb3ZpZGluZyBjb25zdGFudHMg
Zm9yIGkuTVgyOCBwaW5jdHJsIGJpbmRpbmdzLgogICoKICAqIENvcHlyaWdodCAoQykgMjAxMyBM
b3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+Ci0gKgotICogVGhlIGNvZGUg
Y29udGFpbmVkIGhlcmVpbiBpcyBsaWNlbnNlZCB1bmRlciB0aGUgR05VIEdlbmVyYWwgUHVibGlj
Ci0gKiBMaWNlbnNlLiBZb3UgbWF5IG9idGFpbiBhIGNvcHkgb2YgdGhlIEdOVSBHZW5lcmFsIFB1
YmxpYyBMaWNlbnNlCi0gKiBWZXJzaW9uIDIgYXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6Ci0g
KgotICogaHR0cDovL3d3dy5vcGVuc291cmNlLm9yZy9saWNlbnNlcy9ncGwtbGljZW5zZS5odG1s
Ci0gKiBodHRwOi8vd3d3LmdudS5vcmcvY29weWxlZnQvZ3BsLmh0bWwKICAqLwogCiAjaWZuZGVm
IF9fRFRfQklORElOR1NfTVhTX1BJTkNUUkxfSF9fCgo=
