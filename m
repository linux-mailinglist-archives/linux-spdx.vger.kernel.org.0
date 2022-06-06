Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD4A53EF09
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233068AbiFFT7R (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:59:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233119AbiFFT7F (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:59:05 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8A2764726
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:59:01 -0700 (PDT)
Message-ID: <20220606195513.281503880@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545540;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ch66kdD18ul2Fq3kuq7ySP7Yf6h7ukK4d0vgJR4F9qw=;
        b=asFSoUAH4ZeTjo+vHEcYkanwgSIgcxNAww71Q0nKSWVmx43A8DupfVjZ45dzIZ/ZOumwsR
        YLdcm+lLGYVZbsABM2HUcbxQPeywRp+9SFDHMALdr/IhW7dHt2XeOr+2zY9Z9fDhvcKS1P
        WHe+RqBW+xJWR3H9CtnK+MeAvGHEb06KFSO2yaTCZS/gog75yQ+TOE7nWqYafliENsWzr2
        CGmdpT+Ubj/ny6vdXglFlkt6LLSicBobVhAiIExHhe3SCyOfqZ/YvSvMa9CtjCu5bkkpiX
        S6iH4u7qhV5CTNy71Tgr1owIuhZTAwsR5uXCpYex7NqMcsRI9L2aucZfh8zgjw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545540;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ch66kdD18ul2Fq3kuq7ySP7Yf6h7ukK4d0vgJR4F9qw=;
        b=p/TTWklEHHpWRDjomr13WXi01aZOcexIbx18/ZjPmiUvtYlRnibAWw8nHavp6IprFPpmeP
        AXkNuBWYQSxGQACA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 24/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_406.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:59:00 +0200 (CEST)
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
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoaXMgZmlsZSBpcyBs
aWNlbnNlZCB1bmRlciB0aGUgdGVybSBvZiB0aGUgZ251IGdlbmVyYWwgcHVibGljIGxpY2Vuc2UK
ICAgIHZlcnNpb24gMiB0aGUgcHJvZ3JhbSBsaWNlbnNlZCBhcyBpcyB3aXRob3V0IGFueSB3YXJy
YW50eSBvZiBhbnkga2luZAogICAgd2hldGhlciBleHByZXNzIG9yIGltcGxpZWQKCmV4dHJhY3Rl
ZCBieSB0aGUgc2NhbmNvZGUgbGljZW5zZSBzY2FubmVyIHRoZSBTUERYIGxpY2Vuc2UgaWRlbnRp
ZmllcgoKICAgIEdQTC0yLjAtb25seQoKaGFzIGJlZW4gY2hvc2VuIHRvIHJlcGxhY2UgdGhlIGJv
aWxlcnBsYXRlL3JlZmVyZW5jZS4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5lciA8dGds
eEBsaW51dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvZG1hL3BwYzR4eC9kbWEuaCB8ICAgIDUgKy0t
LS0KIGRyaXZlcnMvZG1hL3BwYzR4eC94b3IuaCB8ICAgIDUgKy0tLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKLS0tIGEvZHJpdmVycy9kbWEvcHBj
NHh4L2RtYS5oCisrKyBiL2RyaXZlcnMvZG1hL3BwYzR4eC9kbWEuaApAQCAtMSwxMyArMSwxMCBA
QAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwogLyoKICAqIDQ0
MFNQZSdzIERNQSBlbmdpbmVzIHN1cHBvcnQgaGVhZGVyIGZpbGUKICAqCiAgKiAyMDA2LTIwMDkg
KEMpIERFTlggU29mdHdhcmUgRW5naW5lZXJpbmcuCiAgKgogICogQXV0aG9yOiBZdXJpIFRpa2hv
bm92IDx5dXJAZW1jcmFmdC5jb20+Ci0gKgotICogVGhpcyBmaWxlIGlzIGxpY2Vuc2VkIHVuZGVy
IHRoZSB0ZXJtIG9mICB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UKLSAqIHZlcnNpb24g
Mi4gVGhlIHByb2dyYW0gbGljZW5zZWQgImFzIGlzIiB3aXRob3V0IGFueSB3YXJyYW50eSBvZiBh
bnkKLSAqIGtpbmQsIHdoZXRoZXIgZXhwcmVzcyBvciBpbXBsaWVkLgogICovCiAKICNpZm5kZWYJ
X1BQQzQ0MFNQRV9ETUFfSAotLS0gYS9kcml2ZXJzL2RtYS9wcGM0eHgveG9yLmgKKysrIGIvZHJp
dmVycy9kbWEvcHBjNHh4L3hvci5oCkBAIC0xLDEzICsxLDEwIEBACisvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCiAvKgogICogNDQwU1BlJ3MgWE9SIGVuZ2luZXMg
c3VwcG9ydCBoZWFkZXIgZmlsZQogICoKICAqIDIwMDYtMjAwOSAoQykgREVOWCBTb2Z0d2FyZSBF
bmdpbmVlcmluZy4KICAqCiAgKiBBdXRob3I6IFl1cmkgVGlraG9ub3YgPHl1ckBlbWNyYWZ0LmNv
bT4KLSAqCi0gKiBUaGlzIGZpbGUgaXMgbGljZW5zZWQgdW5kZXIgdGhlIHRlcm0gb2YgIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQotICogdmVyc2lvbiAyLiBUaGUgcHJvZ3JhbSBsaWNl
bnNlZCAiYXMgaXMiIHdpdGhvdXQgYW55IHdhcnJhbnR5IG9mIGFueQotICoga2luZCwgd2hldGhl
ciBleHByZXNzIG9yIGltcGxpZWQuCiAgKi8KIAogI2lmbmRlZiBfUFBDNDQwU1BFX1hPUl9ICgo=
