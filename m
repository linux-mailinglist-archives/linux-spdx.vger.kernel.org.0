Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD055599AFF
	for <lists+linux-spdx@lfdr.de>; Fri, 19 Aug 2022 13:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347621AbiHSLaw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 19 Aug 2022 07:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347538AbiHSLav (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 19 Aug 2022 07:30:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52C4EFF8DA
        for <linux-spdx@vger.kernel.org>; Fri, 19 Aug 2022 04:30:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E29C3617A4
        for <linux-spdx@vger.kernel.org>; Fri, 19 Aug 2022 11:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9FBEC433C1;
        Fri, 19 Aug 2022 11:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1660908650;
        bh=2wmzVDjvgJ9VN/rNXBeeXF8n+o7D9JOizsre5p5+uGw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L2w4AjTk+kdoYlFopZXjM6Zh5xTFyJ57Yxc5gKmNGCQ7/EK5SCMgLo1ZgO+AvLE2o
         iY6aGASGPF56WPCAWvoXTxvnz7CdOmN8XFqAV0QKb2wSt/qsWFsZJn/6O+fXAgZYJM
         I95oR8pNyrn6p0yen97Q/wX0vzvjiIlc3vAZLs9E=
Date:   Fri, 19 Aug 2022 13:30:47 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Michael Ellerman <mpe@ellerman.id.au>
Cc:     linuxppc-dev@lists.ozlabs.org, linux-spdx@vger.kernel.org,
        tglx@linutronix.de
Subject: Re: [PATCH] powerpc/boot: Convert more files to use SPDX tags
Message-ID: <Yv90ZxeQbf7smJCH@kroah.com>
References: <20220819110430.433984-1-mpe@ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220819110430.433984-1-mpe@ellerman.id.au>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Aug 19, 2022 at 09:04:30PM +1000, Michael Ellerman wrote:
> These files are all plain GPL 2.0, with a second sentence about being
> licensed as-is.
> 
> Similar to the rule in commit 577b61cee5b2 ("treewide: Replace GPLv2
> boilerplate/reference with SPDX - gpl-2.0_398.RULE").
> 
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> ---
>  arch/powerpc/boot/44x.h          | 5 +----
>  arch/powerpc/boot/4xx.h          | 5 +----
>  arch/powerpc/boot/ops.h          | 6 ++----
>  arch/powerpc/boot/serial.c       | 6 ++----
>  arch/powerpc/boot/simple_alloc.c | 6 ++----
>  5 files changed, 8 insertions(+), 20 deletions(-)


Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Do you want this to go through the SPDX tree, or will you route it
through the normal ppc tree?  Either is fine with me, just let me know
if you want me to take it in the SPDX tree.

thanks,

greg k-h
