Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37DFC7244A1
	for <lists+linux-spdx@lfdr.de>; Tue,  6 Jun 2023 15:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237887AbjFFNii (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 6 Jun 2023 09:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237631AbjFFNid (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 6 Jun 2023 09:38:33 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BD28E78
        for <linux-spdx@vger.kernel.org>; Tue,  6 Jun 2023 06:38:31 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-30ae4ec1ac7so4826857f8f.2
        for <linux-spdx@vger.kernel.org>; Tue, 06 Jun 2023 06:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686058710; x=1688650710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=85EFiLI503ORP5JesjlHbOh64K/GjvzvL/eTRP3rkhQ=;
        b=fOsE1JpsNSV4Xsjr/6+EEdOeMhcOq7zLmJabYRzqIsqIc+SL6Gk9bQ+6bKvymplh5Q
         FhjITFvmNcueBHvslgiBV5ibyGLwLOzgBOULPc+4CXI9BmDagMTcKfSyWhGpJO/iMbiE
         NJ2ob/WCmiHiA/pYEdmuG/xKKU7EmSBRyaOuVNr0vl+lGjEFDL1d/9UT/E2g5iUhRhk9
         9yepA3t76U0HuQJ/xUmtFMw3L+lkHk8DCesnJoofYTE3aOagXypmWF6wedDPapMu4Pkg
         tGR/yp8uXHJmQBV/a27yYFXRP1V9YtH2wlhfBanDvQvWl7Qf5vqR6+xK7dC/89qo7S0H
         qRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686058710; x=1688650710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85EFiLI503ORP5JesjlHbOh64K/GjvzvL/eTRP3rkhQ=;
        b=TOW5QXoGtXt4yjpDmEUrynaubQ6eiN1C8xYGyxJAnTwXajRXlgGF5ZLtsFSH3JH7KS
         sVJtCYJxCjk4pCit7OKMYHIGbLx9Sr8yGaS0/PW4LsWxxEj2i1gko12NEQ5P2D0r1Dpd
         wu9SF9VJDiZk5vJcaMQQVoewBtXwlAj+mYteJEmp7c06IlObgIlnqPUlK8bWjQT/p/jA
         zQMb5IaVK6Glp08TVFLwHZUw/X1ugzxEvTMzsi0PqN4dA1FDd4MPSVUOWSsuwm5ErlTa
         y3HpzUiHqN8sO4DwQH7ChZz7E92BvFdZqYgxznVs2R33d9Y1fAIg4gP/nDX5EDRzz2OB
         gXSQ==
X-Gm-Message-State: AC+VfDw3zGPxwhl0hC5ml4o7iv5HiRncbgJcQfjgwSBxAL983PjM1v1z
        wUgc73BZxS94ElCQ9DM/fQ2mhw==
X-Google-Smtp-Source: ACHHUZ4AMsKpUttX2fYo2DbgD1pFk1gewZgB0HIuULY5Ayuj9wHoMlOSB/ECcbPpKgJ8R9mQgHbpTQ==
X-Received: by 2002:adf:ea0a:0:b0:30e:52de:9ccf with SMTP id q10-20020adfea0a000000b0030e52de9ccfmr788222wrm.68.1686058709896;
        Tue, 06 Jun 2023 06:38:29 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id v10-20020a1cf70a000000b003f41bb52834sm17664547wmh.38.2023.06.06.06.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 06:38:28 -0700 (PDT)
Date:   Tue, 6 Jun 2023 16:38:25 +0300
From:   Dan Carpenter <dan.carpenter@linaro.org>
To:     Bagas Sanjaya <bagasdotme@gmail.com>
Cc:     Franziska Naepelt <franziska.naepelt@googlemail.com>,
        keyrings@vger.kernel.org, dhowells@redhat.com, dwmw2@infradead.org,
        linux-kernel@vger.kernel.org,
        Franziska Naepelt <franziska.naepelt@gmail.com>,
        kernel test robot <lkp@intel.com>,
        Linux SPDX Licenses <linux-spdx@vger.kernel.org>,
        Linux Kernel Janitors <kernel-janitors@vger.kernel.org>
Subject: Re: [PATCH v2] certs/extract-cert: Fix checkpatch issues
Message-ID: <e39efb7f-5d8f-4433-83b3-8eea8a6c0486@kadam.mountain>
References: <20230601190508.56610-1-franziska.naepelt@gmail.com>
 <20230602085902.59006-1-franziska.naepelt@gmail.com>
 <ZH8mhIrjyBvTF4oZ@debian.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZH8mhIrjyBvTF4oZ@debian.me>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 06, 2023 at 07:28:52PM +0700, Bagas Sanjaya wrote:
> On Fri, Jun 02, 2023 at 10:59:02AM +0200, Franziska Naepelt wrote:
> > The following issues are fixed:
> > - WARNING: Missing or malformed SPDX-License-Identifier tag
> > - ERROR: trailing statements should be on next line
> > - WARNING: braces {} are not necessary for single statement blocks
> > - ERROR: space required before the open parenthesis '('
> > - ERROR: code indent should use tabs where possible
> > - WARNING: please, no spaces at the start of a line
> > - WARNING: Missing a blank line after declarations
> 
> Again, write the patch description in imperative mood (e.g. "Do foo").
> 

Why do you care about imperative tense?  Imperative tense doesn't
matter.  What matters is that you can understand the issue and how it
looks like to the user.  I was working with a group of foreign students
and it was painful to see the contortions that they went through to make
a commit message imperative.  It's like saying "Bake a cake", "Ok, now
bake it while juggling."  The cake ends up worse.  And the commit
message end up worse when we force nonsense rules like this.

That said the rest of your comments are correct.

Franziska, I kind of feel like you should start in drivers/staging/
because you're sending beginner patches to kind of core parts of the
kernel where people are busy.  Most likely your going to have to send a
bunch of iterations of the patch.  In drivers/staging/ we don't mind
reviewing newbie patches.

regards,
dan carpenter

