Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C07AB5F1CFE
	for <lists+linux-spdx@lfdr.de>; Sat,  1 Oct 2022 16:58:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiJAO6N (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sat, 1 Oct 2022 10:58:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiJAO6L (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sat, 1 Oct 2022 10:58:11 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EB3A9A9F4
        for <linux-spdx@vger.kernel.org>; Sat,  1 Oct 2022 07:58:09 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id s206so6416708pgs.3
        for <linux-spdx@vger.kernel.org>; Sat, 01 Oct 2022 07:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=eKAVXQ6WIEp2O+nN/v39KjFg3UGl5I9c6V2z3UbxsDY=;
        b=FM8mg/lw7CnNu/nvl2Sw/Pf5kz+Ql6nwbq2Y7T0lJmduz4c+9NzGXRu1cIu0os19hH
         s4mLhghmMPtvCLr4DAnd+aYgs5qMg/5S+gK/65UqS2RuuxlQr/BlB3D3+4TT+xhheXcc
         g07Gp43ozMEIQTpWqUx6/8VUxp7yFFyUVMWtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=eKAVXQ6WIEp2O+nN/v39KjFg3UGl5I9c6V2z3UbxsDY=;
        b=gh9MO0GKvqk86KBJBKMKmXDWPeJbVTUWzN7rGcxTz0TD4e//lki39FlK70JclBmsxx
         qB2d3fhsQXvyqI2CpHLsFZWXXB0/QNenLCtjZEipvR3AhJ4sTuYFD1uvocuewS05dSs+
         OipGIWJ2jqmd1MX/iOZ74OtiSSGygmr75BI7p5Ok08N225JoDCVD7QtOqV628XNHfdT1
         CUdoreGMdUpHg4G07ql5Ld22IJgojEhND7ES1lm10hAKQlSjXYVOpqepf1UziocmjfiX
         kfyijE9TrTYLanRB245i/aiJfEYo6f3mqsRcKX8Xsb3c7cK/4gYymsoLVHYV8JFBiDHr
         RZtg==
X-Gm-Message-State: ACrzQf2VhsX7KJHUi+7LQPtc6a1+vFpBUwLBHEoCBbkzfMVwXL3i4Bde
        tPQXsctDlLL9N9Bn/RTFplHnVg==
X-Google-Smtp-Source: AMsMyM5do+AzXsCIWnDeyQnpZIY4CZrGdxgEdGysR57hw0IKkzkuVPkoWZZ8RxTYy6bVHyReZDj3PA==
X-Received: by 2002:aa7:8687:0:b0:560:3299:a6c0 with SMTP id d7-20020aa78687000000b005603299a6c0mr1438072pfo.81.1664636288283;
        Sat, 01 Oct 2022 07:58:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m23-20020a17090a159700b002037a4e913bsm7079337pja.44.2022.10.01.07.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 07:58:07 -0700 (PDT)
Date:   Sat, 1 Oct 2022 07:58:06 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Luis Chamberlain <mcgrof@kernel.org>
Cc:     tglx@linutronix.de, gregkh@linuxfoundation.org,
        akpm@linux-foundation.org, shuah@kernel.org, joe@perches.com,
        rostedt@goodmis.org, linux-spdx@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Goldwyn Rodrigues <rgoldwyn@suse.com>,
        Kuno Woudt <kuno@frob.nl>,
        Richard Fontana <fontana@sharpeleven.org>,
        copyleft-next@lists.fedorahosted.org,
        Ciaran Farrell <Ciaran.Farrell@suse.com>,
        Christopher De Nicolo <Christopher.DeNicolo@suse.com>,
        Christoph Hellwig <hch@lst.de>,
        Jonathan Corbet <corbet@lwn.net>,
        Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [PATCH v10 2/2] testing: use the copyleft-next-0.3.1 SPDX tag
Message-ID: <202210010755.204FC88C@keescook>
References: <20220914060147.1934064-1-mcgrof@kernel.org>
 <20220914060147.1934064-3-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220914060147.1934064-3-mcgrof@kernel.org>
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Sep 13, 2022 at 11:01:47PM -0700, Luis Chamberlain wrote:
> Two selftests drivers exist under the copyleft-next license.
> These drivers were added prior to SPDX practice taking full swing
> in the kernel. Now that we have an SPDX tag for copylef-next-0.3.1

nit: copylef -> copyleft

> documented, embrace it and remove the boiler plate.
> 
> Cc: Goldwyn Rodrigues <rgoldwyn@suse.com>
> Cc: Kuno Woudt <kuno@frob.nl>
> Cc: Richard Fontana <fontana@sharpeleven.org>
> Cc: copyleft-next@lists.fedorahosted.org
> Cc: Ciaran Farrell <Ciaran.Farrell@suse.com>
> Cc: Christopher De Nicolo <Christopher.DeNicolo@suse.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Thorsten Leemhuis <linux@leemhuis.info>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  lib/test_kmod.c                          | 12 +-----------
>  lib/test_sysctl.c                        | 12 +-----------
>  tools/testing/selftests/kmod/kmod.sh     | 13 +------------
>  tools/testing/selftests/sysctl/sysctl.sh | 12 +-----------
>  4 files changed, 4 insertions(+), 45 deletions(-)

Reviewed-by: Kees Cook <keescook@chromium.org>

Always nice to see more lines removed than added. :)

-- 
Kees Cook
