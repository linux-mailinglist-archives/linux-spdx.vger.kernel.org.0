Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B96525400C6
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245128AbiFGOLP (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245127AbiFGOLN (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:13 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F1E7A33A9
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:12 -0700 (PDT)
Message-ID: <20220607131425.436789559@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611069;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=pLWM0kdBeppiU1KK+DeFgM8jpOFzD2YtJhLX89Dqh04=;
        b=rgHyDuUWjENlYjvjUkdVS+kDjJrWw0iJqsy4iIeIyExnbRTNcIyE8PkuoVDbnzL4V9KKXq
        ILpqkwcZtBe751NdIuH4Cau6bWqlE9v3pIf2qhF9UsTGjyA+n4ascmFEDOEmr/nUnUwbh+
        2gaKoIOC8B5ttqSFT79IB+9cnnsP0xlkLkleLDUUbSzG2J+u9eOzzp6nKqtBGwkVUcWBDm
        V1u1NKDyuEjgojOxlH6HFgX3aMYKvpJC+/wEyQOxxrJCVzOxe26LE6ixaPVZnyX80/u0mX
        qMmwpHaT7x2C0LuHaumQ9Nu+4S/CBSHOdX5NI/chHBOfKoLhVQDO7KrIy9BqCw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611069;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=pLWM0kdBeppiU1KK+DeFgM8jpOFzD2YtJhLX89Dqh04=;
        b=O0BfNwyRbqD9dFn19o44ivATl5AoJu3pq6CZqWfpWNRfpO5QSpugBCPXoPDMQQlpWBD9Qa
        TCLn8m/zSAgbjpCA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch V2 00/24] The first batch of various GPLv2 boilerplates and references
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Tue,  7 Jun 2022 16:11:09 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rm9sa3MhCgpUaGlzIGlzIHZlcnNpb24gMiBvZiB0aGUgZmlyc3QgYmF0Y2guIENoYW5nZXMgdG8g
dmVyc2lvbiAxOgoKICAgICAtIERyb3BwZWQgdGhlIHBhdGNoZXMgd2hpY2ggd2VyZSBpZGVudGlm
aWVkIGJ5IFJpY2hhcmQgYXMgcHJvYmxlbWF0aWMKCiAgICAgLSBDb2xsZWN0ZWQgUmV2aWV3ZWQt
YnkgdGFncyBhcyBhcHByb3ByaWF0ZS4gVGhhbmtzIEFsbGlzb24hCgogICAgIC0gU3BsaXQgdGhl
IHYxIHBhdGNoZXMgMywgNCBhbmQgMTAgaW50byBwYXJ0cyBzbyB0aGV5IGZpdCBpbnRvIHRoZQog
ICAgICAgc2l6ZSBsaW1pdCBvZiB0aGUgbWFpbGluZyBsaXN0LiBUaG9zZSBhcmUgbm93IHBhdGNo
ZXMgMi02IGFuZCAxMi0xMwoKVGhlIHNlcmllcyBpcyBhbHNvIGF2YWlsYWJsZSBmcm9tIGdpdDoK
CiAgICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGdseC9s
aW51eC1zcGR4LmdpdCAyMDIyLWJhdGNoMQoKVGhhbmtzLAoKCXRnbHgK
