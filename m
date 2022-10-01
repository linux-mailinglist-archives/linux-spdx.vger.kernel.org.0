Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF5F5F1D25
	for <lists+linux-spdx@lfdr.de>; Sat,  1 Oct 2022 17:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbiJAPIS (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sat, 1 Oct 2022 11:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbiJAPIR (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sat, 1 Oct 2022 11:08:17 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD4D0C458E
        for <linux-spdx@vger.kernel.org>; Sat,  1 Oct 2022 08:08:14 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id c68so326417pfc.4
        for <linux-spdx@vger.kernel.org>; Sat, 01 Oct 2022 08:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=CfJ4LY4nyRCFIeOrGborQL4EdiBueyyIq2QPL4Ls338=;
        b=KwF3kbq1FZA2uP9a0tlkd8V1N1rfa6TuMxv2pnDtsCRQ0K0IW91HVe0i70JDsL9Oyl
         L5q3vcI8eRVq9lMOuBDiY85Pqii/qbld9fGIP9a8Atgxg6GrK5iMFo0qFGzadxE+jWwS
         VQ5evluisRfa6D45Z6V3E7u53N522mX6GLIFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=CfJ4LY4nyRCFIeOrGborQL4EdiBueyyIq2QPL4Ls338=;
        b=OT8ZRzojX0la1iCHxA3ZmtTLKwIWjvRzRw/D/E2Pr4WrU02ha4dAzXl4J9hTkk+eF0
         WPz/2CAs4jrLfrwyUBHjmGNk7+dPQ4jwhDmr7SnKHe2ceGhIVJScCkLQY8RQVDypsqhM
         7vWvmFez3132OK/48cmGovRF6j9Tw/FjR9LRzj/F4xDE0t3Lg2MSkInC1+gU54UuH1NV
         Kd85Yzf9TLEQqmH/0uz6ZZFzPyzPFiPafYgA8NqJSv+5V0cfLofDi0ftOMojRFLd9/p6
         ATECKDPVC72qr64KsuB2764KowPNwiCbxZHfAt2z7L4wO1F/3QOH+lJQ0H/lHEY4vOEf
         nkbg==
X-Gm-Message-State: ACrzQf1pcHOmjqYOs+mpdStGpoOHlY3bjAm6zOM6/XT+BzGLl9XgiILj
        wLg2q1iYmDUv9fn31k/d/JVMLA==
X-Google-Smtp-Source: AMsMyM6JdGUouZLlItZTS+6c+aB/E63F7x3GTMIkV6Qq/vQvzuV/5OP825+gOMFDOPQlU7H87ilxdg==
X-Received: by 2002:a63:e809:0:b0:43c:b1b6:a50c with SMTP id s9-20020a63e809000000b0043cb1b6a50cmr11769391pgh.428.1664636894214;
        Sat, 01 Oct 2022 08:08:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ij26-20020a170902ab5a00b0016d8d277c02sm4002926plb.25.2022.10.01.08.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 08:08:13 -0700 (PDT)
Date:   Sat, 1 Oct 2022 08:08:12 -0700
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
Subject: Re: [PATCH v10 1/2] LICENSES: Add the copyleft-next-0.3.1 license
Message-ID: <202210010804.206AED744@keescook>
References: <20220914060147.1934064-1-mcgrof@kernel.org>
 <20220914060147.1934064-2-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220914060147.1934064-2-mcgrof@kernel.org>
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Sep 13, 2022 at 11:01:46PM -0700, Luis Chamberlain wrote:
> Add the full text of the copyleft-next-0.3.1 license to the kernel
> tree as well as the required tags for reference and tooling.
> The license text was copied directly from the copyleft-next project's
> git tree [0].
> 
> Discussion of using copyleft-next-0.3.1 on Linux started since June,
> 2016 [1]. In the end Linus' preference was to have drivers use
> MODULE_LICENSE("GPL") to make it clear that the GPL applies when it
> comes to Linux [2]. Additionally, even though copyleft-next-0.3.1 has
> been found to be to be GPLv2 compatible by three attorneys at SUSE and
> Redhat [3], to err on the side of caution we simply recommend to
> always use the "OR" language for this license [4].

IANA copyright lawyer, but the use of "OR" seems sensible to me, and I
see no reason to NOT add this license.

> [...]
>  LICENSES/dual/copyleft-next-0.3.1 | 236 ++++++++++++++++++++++++++++++
> [...]
> +SPDX-URL: https://spdx.org/licenses/copyleft-next-0.3.1

The contents[1] of this license match the patch.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

[1] https://raw.githubusercontent.com/copyleft-next/copyleft-next/master/Releases/copyleft-next-0.3.1

-- 
Kees Cook
