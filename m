Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDF345A7E70
	for <lists+linux-spdx@lfdr.de>; Wed, 31 Aug 2022 15:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230315AbiHaNPp (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 31 Aug 2022 09:15:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230322AbiHaNPo (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 31 Aug 2022 09:15:44 -0400
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 481447CB6E
        for <linux-spdx@vger.kernel.org>; Wed, 31 Aug 2022 06:15:36 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4MHl6G5pM9z4xGL;
        Wed, 31 Aug 2022 23:15:34 +1000 (AEST)
From:   Michael Ellerman <patch-notifications@ellerman.id.au>
To:     Michael Ellerman <mpe@ellerman.id.au>,
        linuxppc-dev@lists.ozlabs.org
Cc:     tglx@linutronix.de, gregkh@linuxfoundation.org,
        linux-spdx@vger.kernel.org
In-Reply-To: <20220819110430.433984-1-mpe@ellerman.id.au>
References: <20220819110430.433984-1-mpe@ellerman.id.au>
Subject: Re: [PATCH] powerpc/boot: Convert more files to use SPDX tags
Message-Id: <166195163098.45984.2776043525792290652.b4-ty@ellerman.id.au>
Date:   Wed, 31 Aug 2022 23:13:50 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, 19 Aug 2022 21:04:30 +1000, Michael Ellerman wrote:
> These files are all plain GPL 2.0, with a second sentence about being
> licensed as-is.
> 
> Similar to the rule in commit 577b61cee5b2 ("treewide: Replace GPLv2
> boilerplate/reference with SPDX - gpl-2.0_398.RULE").
> 
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/boot: Convert more files to use SPDX tags
      https://git.kernel.org/powerpc/c/e01432baf6618296f4d2d557e6b4c3245a5cc3c2

cheers
