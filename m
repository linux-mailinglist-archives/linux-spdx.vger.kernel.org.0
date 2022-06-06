Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3B8153EEF9
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232719AbiFFT6i (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232815AbiFFT6f (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:35 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE0C02E9F4
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:33 -0700 (PDT)
Message-ID: <20220606195512.234848829@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545512;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=WxVYwa/Mf1LBwtZyPieL2xOE9O6J/FfyhbzQDffJOjU=;
        b=0/ZAhkc20PZzklTLy3H8rbNGA0TUfHRBYUiwE0IWy195WEOx98/onRHVZJUbQgCKl5xG6r
        sjO+zr9raYKAdPTcm5UtNubqB5b4YOjmCSjtitX2fDQ0qNbX0Xnzd6y7hsd3HqO8zSqRFX
        6uOUWRe7Ld6NTFzSLuUtrOhez4xXdvGHWFpT+0FgnUCezS8SCai5Xh3u8kWH20cMRmpI+Q
        qtbGh/rdg0NuyIPBz0+fCbHougqDMCaPbHsKoxmLa7l8xJncIZ3XOrIEC8HVngA2apo+5Y
        tMRXpNBwF/8bctu8SKw766ITlA8ke3IIyBNa5HQajipUsjAMmiazJ6PnN1/0Mg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545512;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=WxVYwa/Mf1LBwtZyPieL2xOE9O6J/FfyhbzQDffJOjU=;
        b=R9EyzjttpILrn2BJE8L/Z7GA5C8E7SrchsQldVahHpEkldFLze4pIxEgIixLD8HoELnxzJ
        EFdh6T0l0SqapNDw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 06/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_147.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:31 +0200 (CEST)
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
IGdwbHYyCgpleHRyYWN0ZWQgYnkgdGhlIHNjYW5jb2RlIGxpY2Vuc2Ugc2Nhbm5lciB0aGUgU1BE
WCBsaWNlbnNlIGlkZW50aWZpZXIKCiAgICBHUEwtMi4wLW9ubHkKCmhhcyBiZWVuIGNob3NlbiB0
byByZXBsYWNlIHRoZSBib2lsZXJwbGF0ZS9yZWZlcmVuY2UuCgpTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KLS0tCiBEb2N1bWVudGF0aW9uL2FybS9z
YW1zdW5nLXMzYzI0eHgvY3B1ZnJlcS5yc3QgfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCi0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3NhbXN1
bmctczNjMjR4eC9jcHVmcmVxLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2FybS9zYW1zdW5nLXMz
YzI0eHgvY3B1ZnJlcS5yc3QKQEAgLTEsMyArMSw0IEBACisuLiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5CiA9PT09PT09PT09PT09PT09PT09PT09PQogUzNDMjRYWCBDUFVm
cmVxIHN1cHBvcnQKID09PT09PT09PT09PT09PT09PT09PT09CkBAIC03Myw0ICs3NCwzIEBAIERv
Y3VtZW50IEF1dGhvcgogLS0tLS0tLS0tLS0tLS0tCiAKIEJlbiBEb29rcywgQ29weXJpZ2h0IDIw
MDkgU2ltdGVjIEVsZWN0cm9uaWNzCi1MaWNlbnNlZCB1bmRlciBHUEx2MgoK
