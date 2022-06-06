Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5401D53EF08
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233084AbiFFT7Q (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233094AbiFFT7E (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:59:04 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D23060B89
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:59:00 -0700 (PDT)
Message-ID: <20220606195513.224847686@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545538;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=gXHSs3i04kC0LO0oYv2luz30eTMa6GKtFTVawvNCio8=;
        b=c6ahhL49NQj/LDYzvNbb1uh/vHrGvjSApfvkw0EO+XThRbOFW8sjO+EAlO2g57hLDaJC/Q
        oh+AhdztTjbYA9eg+DTpdvXY3VkLmb253s8SVf+Otisb3EPTJoS4NwL1gO54q80dAtAR9e
        cMZrXsGH2QPIiXmKr6/BXJUVuRFEGgWorKCO+ZJL5fhDWqO9/kjp6bNfKLOV8luHHc7LZL
        2+6Sps0zJrYQc5vNo6ZuL1L8tb0tsKYYezZ7y2+KDwex6DsCLmaICZ7+oSsiHgRsEtglt/
        AVSItQhdMmMSbR5dI9rXgIPAucDUQLQ6mliMfg36bOsDf1aEm51I+jCzuAbGWw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545538;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=gXHSs3i04kC0LO0oYv2luz30eTMa6GKtFTVawvNCio8=;
        b=D4F4L1Po5MyUSkgfa56vlURwZCN5iwJPpyUYjoC1cg72brHd95oaqmAG5yz9Vxg1Z4mUat
        5v/BcdnCSIjuIjAA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 23/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_398.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:58 +0200 (CEST)
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
aWNlbnNlZCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIGdudSBnZW5lcmFsIHB1YmxpYwogICAgbGlj
ZW5zZSB2ZXJzaW9uIDIgdGhpcyBwcm9ncmFtIGFzIGxpY2Vuc2VkIGFzIGlzIHdpdGhvdXQgYW55
IHdhcnJhbnR5CiAgICBvZiBhbnkga2luZCB3aGV0aGVyIGV4cHJlc3Mgb3IgaW1wbGllZAoKZXh0
cmFjdGVkIGJ5IHRoZSBzY2FuY29kZSBsaWNlbnNlIHNjYW5uZXIgdGhlIFNQRFggbGljZW5zZSBp
ZGVudGlmaWVyCgogICAgR1BMLTIuMC1vbmx5CgpoYXMgYmVlbiBjaG9zZW4gdG8gcmVwbGFjZSB0
aGUgYm9pbGVycGxhdGUvcmVmZXJlbmNlLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEdsZWl4bmVy
IDx0Z2x4QGxpbnV0cm9uaXguZGU+Ci0tLQogYXJjaC9wb3dlcnBjL2tlcm5lbC9rZ2RiLmMgfCAg
ICA1ICstLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0p
CgotLS0gYS9hcmNoL3Bvd2VycGMva2VybmVsL2tnZGIuYworKysgYi9hcmNoL3Bvd2VycGMva2Vy
bmVsL2tnZGIuYwpAQCAtMSwzICsxLDQgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkKIC8qCiAgKiBQb3dlclBDIGJhY2tlbmQgdG8gdGhlIEtHREIgc3R1Yi4KICAq
CkBAIC04LDEwICs5LDYgQEAKICAqIFBQQzMyIHN1cHBvcnQgcmVzdG9yZWQgYnkgVml0YWx5IFdv
b2wgPHZ3b29sQHJ1Lm12aXN0YS5jb20+IGFuZAogICogU2VyZ2VpIFNodHlseW92IDxzc2h0eWx5
b3ZAcnUubXZpc3RhLmNvbT4KICAqIENvcHlyaWdodCAoQykgMjAwNy0yMDA4IFdpbmQgUml2ZXIg
U3lzdGVtcywgSW5jLgotICoKLSAqIFRoaXMgZmlsZSBpcyBsaWNlbnNlZCB1bmRlciB0aGUgdGVy
bXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlCi0gKiB2ZXJzaW9uIDIuIFRoaXMg
cHJvZ3JhbSBhcyBsaWNlbnNlZCAiYXMgaXMiIHdpdGhvdXQgYW55IHdhcnJhbnR5IG9mIGFueQot
ICoga2luZCwgd2hldGhlciBleHByZXNzIG9yIGltcGxpZWQuCiAgKi8KIAogI2luY2x1ZGUgPGxp
bnV4L2tlcm5lbC5oPgoK
