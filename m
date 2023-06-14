Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A97037247A8
	for <lists+linux-spdx@lfdr.de>; Tue,  6 Jun 2023 17:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237911AbjFFPZz (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 6 Jun 2023 11:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237407AbjFFPZr (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 6 Jun 2023 11:25:47 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A417F10EA
        for <linux-spdx@vger.kernel.org>; Tue,  6 Jun 2023 08:25:31 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f736e0c9b1so31734475e9.3
        for <linux-spdx@vger.kernel.org>; Tue, 06 Jun 2023 08:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686065130; x=1688657130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UiHvTF7p879q1ILr7hgDEXzbZvWSzHtMlq0hydh7W3k=;
        b=CqIMA73fM0X3IVdH3xrjtP+g3e+zkRiMdnUsUvnFBKpynzb36zZj/Q+bhGUr5iGUi+
         2f/rKH9jeIGnoHg24E29EQoN2Z/4rhf7B08qfHadmNnGhawsQLJ/SJZvjcqNQ3a3qt43
         WoK+W/jAjnPSVRH2IR7cQWvmfbKK1cnDtTGaD7Q7zAqGjKJ18TdTieePA/+jjl2E6D1J
         f0elddqgltusyNbJ9jTkxlpWOeea8kTO3FeVKjC65/uwOPQs6WTYM7ccgaG8U+PI8UCr
         Z7/e6IbU7PuUJTnWCPJ4QO1foO7+jyBlp7EefArkfTmUZFvZDpXUnkB0CG/KP7/qQD+X
         310Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686065130; x=1688657130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UiHvTF7p879q1ILr7hgDEXzbZvWSzHtMlq0hydh7W3k=;
        b=Yt70C3/5NyqIf2HKw4mCPnsPJXNE/A2pXRAZYzoHW32G8nb+0JmtrBQ7yoLncqbwM5
         z6d+miQer1BCt986y/MvT2Os9zI/A/uuvNCaH9PpCGD15uECGiEIu0dAhCbGRWx1iMnj
         ke/4hy+fhUxp0UpckNZVBVZXIvmT8Y1DQ3B9icjdJubxHyqI6Js7MQJJodShNoDAkD/5
         vGelvdzgzZV1O6aJCY4JameNh8aY4F0H+EqSQIozJ/biQ2162NDPZDkkqW8x+2Kxf2zy
         ewg3XWc8xiVdgnKngxyA9+/d0DstmdLMMqFZb5vT1z+DxPLZLnfqB9/NFf1pWW0H2r/i
         spDQ==
X-Gm-Message-State: AC+VfDz5vta5nrA6s+TIKi4UTRTjp9ir8A5PhnSKn0lzp3Fj58993tMy
        KlwhZzgmFn9Snh3i51L92gavPg==
X-Google-Smtp-Source: ACHHUZ6+uUbiLSg37Fr4lw5YxwQQe2ir3TXqeHmzYQuDDvgaNJQWbV2XhNoXOY1kXr0PgBb3MU6TFg==
X-Received: by 2002:a5d:5186:0:b0:309:38af:d300 with SMTP id k6-20020a5d5186000000b0030938afd300mr2068482wrv.33.1686065130119;
        Tue, 06 Jun 2023 08:25:30 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id b14-20020a5d40ce000000b002e5ff05765esm13085127wrq.73.2023.06.06.08.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 08:25:27 -0700 (PDT)
Date:   Tue, 6 Jun 2023 18:25:24 +0300
From:   Dan Carpenter <dan.carpenter@linaro.org>
To:     Jarkko Sakkinen <jarkko@kernel.org>
Cc:     Bagas Sanjaya <bagasdotme@gmail.com>,
        Franziska Naepelt <franziska.naepelt@googlemail.com>,
        keyrings@vger.kernel.org, dhowells@redhat.com, dwmw2@infradead.org,
        linux-kernel@vger.kernel.org,
        Franziska Naepelt <franziska.naepelt@gmail.com>,
        kernel test robot <lkp@intel.com>,
        Linux SPDX Licenses <linux-spdx@vger.kernel.org>,
        Linux Kernel Janitors <kernel-janitors@vger.kernel.org>
Subject: Re: [PATCH v2] certs/extract-cert: Fix checkpatch issues
Message-ID: <e44d03cf-9993-483c-b3d4-6185f5c028cc@kadam.mountain>
References: <20230601190508.56610-1-franziska.naepelt@gmail.com>
 <20230602085902.59006-1-franziska.naepelt@gmail.com>
 <ZH8mhIrjyBvTF4oZ@debian.me>
 <e39efb7f-5d8f-4433-83b3-8eea8a6c0486@kadam.mountain>
 <CT5NH4XXIYQF.5XXJE6JA5FZP@suppilovahvero>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CT5NH4XXIYQF.5XXJE6JA5FZP@suppilovahvero>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 06, 2023 at 05:51:09PM +0300, Jarkko Sakkinen wrote:
> On Tue Jun 6, 2023 at 4:38 PM EEST, Dan Carpenter wrote:
> > On Tue, Jun 06, 2023 at 07:28:52PM +0700, Bagas Sanjaya wrote:
> > > On Fri, Jun 02, 2023 at 10:59:02AM +0200, Franziska Naepelt wrote:
> > > > The following issues are fixed:
> > > > - WARNING: Missing or malformed SPDX-License-Identifier tag
> > > > - ERROR: trailing statements should be on next line
> > > > - WARNING: braces {} are not necessary for single statement blocks
> > > > - ERROR: space required before the open parenthesis '('
> > > > - ERROR: code indent should use tabs where possible
> > > > - WARNING: please, no spaces at the start of a line
> > > > - WARNING: Missing a blank line after declarations
> > > 
> > > Again, write the patch description in imperative mood (e.g. "Do foo").
> > > 
> >
> > Why do you care about imperative tense?  Imperative tense doesn't
> > matter.  What matters is that you can understand the issue and how it
> > looks like to the user.  I was working with a group of foreign students
> > and it was painful to see the contortions that they went through to make
> > a commit message imperative.  It's like saying "Bake a cake", "Ok, now
> > bake it while juggling."  The cake ends up worse.  And the commit
> > message end up worse when we force nonsense rules like this.
> 
> How about a simple and stupid reason?
> 
> Usually I write commit message without caring about this. Then I rewrite
> the commit message and 9/10 it gets shorter. Based on empirical
> experience, imperative form has minimum amount of extra words.
> 

I'm looking through the git log to see if it's true the imperative tense
commit message are shorter and better and neither one of those things is
obvious to me.

This patch had an imperative subject already so it was already kind of
imperative.  Does every sentence have to be imperative or can you just
add a "Fix it." to the end?

I don't want to belittle the challenges you face around the English
language but I think students were less fluent than you are.  So maybe
imperative tense works for you but it definitely made their commit
messages far worse.

regards,
dan carpenter

