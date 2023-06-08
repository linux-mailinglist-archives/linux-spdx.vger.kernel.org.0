Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ACBD727E87
	for <lists+linux-spdx@lfdr.de>; Thu,  8 Jun 2023 13:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbjFHLMv (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 8 Jun 2023 07:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234964AbjFHLMu (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 8 Jun 2023 07:12:50 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F1C1BC6
        for <linux-spdx@vger.kernel.org>; Thu,  8 Jun 2023 04:12:46 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f70fc4682aso2914255e9.1
        for <linux-spdx@vger.kernel.org>; Thu, 08 Jun 2023 04:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686222765; x=1688814765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o5MRNV0H6Mf6BSMHgmlWIlT/3d2LPxjkRdIvdDCaD6A=;
        b=rbTJYSIzpJzpcPPPQn+IP6ePq6TCu1flDdX36l7QJwnZjW4+PWL94uUjH8tWEdwyU4
         tPE9+m2dlBPOdY1byYsHQoVVY5nd7xj5PSLX2/H9JQ3KUguds59TgRFz5qXl8NJE1d6z
         F1tkil9qtLD1PheVSvuzkB46yJMp8MfqHiiB4MYPL5h1J+en3ch96cFtmZ3c7r/Otxy7
         WE91VlTBkrC703Mu5STaIILLAd/bphXGqEHvBOVw6UHTzljiLkL/er7dgU1bfQ6+Kn9y
         p0O2CjP98cCTRpN2KVvDwXi845REwUi5MDh5FCgpJTgEpdpIDmWUXeQZGb93gclI2Nmn
         2GSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686222765; x=1688814765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5MRNV0H6Mf6BSMHgmlWIlT/3d2LPxjkRdIvdDCaD6A=;
        b=WLY9BON9MEtRMCOmLOeXIvSl22synxU9S4lkeGuMDgYbueqtZ51qDZ+8cgxQtplwOI
         bJBE+XMP3DFkiz+gdtAY5JsNgPaMhr6aFaE/m/Uoox+1O96pXaRyh3xESpmrEkBZkeIr
         9u6f3h1dEjfqqPhgsuwA6G4Qa7CX2pFqH4rI4OX/rTcSnjdEAht1RyzGZ+wYiZ9Ab87p
         B8jJHbAXAg1zpGn2KFshFJ3tdIgd2U0lTBpwdCwEMSNh/IOUURrq8aGXLu+zYvYKMezY
         No6wmklWJkaPWpk6qMUJuCj056iDqLPAGco+86zNnEGXRyYL97GpmaaoO7yNL2eXwGZf
         nEsA==
X-Gm-Message-State: AC+VfDwVE2l63wEJ7GjyxbYWCOCg23GRzDWGxwlYeOXvI0xnWODpP7LZ
        C3Cmt9XHdmQI5NU1nd0IwIEgqJk4l3SRjHXIcsY=
X-Google-Smtp-Source: ACHHUZ6YbDpuaOkh1ScQ4yT6HQV0eme7g5HML/6esJ1BoMXafzyZvROMii4WnwPrls7B2YfaHU6MMQ==
X-Received: by 2002:a05:600c:ace:b0:3f6:91c:4e86 with SMTP id c14-20020a05600c0ace00b003f6091c4e86mr1141195wmr.3.1686222765444;
        Thu, 08 Jun 2023 04:12:45 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id o10-20020a1c750a000000b003f60101074dsm4950243wmc.33.2023.06.08.04.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 04:12:43 -0700 (PDT)
Date:   Thu, 8 Jun 2023 14:12:39 +0300
From:   Dan Carpenter <dan.carpenter@linaro.org>
To:     Bagas Sanjaya <bagasdotme@gmail.com>
Cc:     Richard Fontana <rfontana@redhat.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        Franziska Naepelt <franziska.naepelt@googlemail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Linux SPDX Licenses <linux-spdx@vger.kernel.org>,
        Linux Kernel Janitors <kernel-janitors@vger.kernel.org>,
        Linux Crypto <linux-crypto@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        David Howells <dhowells@redhat.com>,
        Jarkko Sakkinen <jarkko@kernel.org>
Subject: Re: [PATCH 8/8] crypto: cts: Convert MIT boilerplate to
 corresponding SPDX license identifier
Message-ID: <cbb2f098-7e8e-4638-b349-85872d988476@kadam.mountain>
References: <20230607053940.39078-10-bagasdotme@gmail.com>
 <20230607053940.39078-18-bagasdotme@gmail.com>
 <CAC1cPGx-mD0DAEanCFtoxoGRyHkcu-GTTNX=ePzjhb8XM+73mg@mail.gmail.com>
 <ZIFn8mNXVcI0SGTR@debian.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZIFn8mNXVcI0SGTR@debian.me>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Jun 08, 2023 at 12:32:34PM +0700, Bagas Sanjaya wrote:
> On Wed, Jun 07, 2023 at 09:47:33AM -0400, Richard Fontana wrote:
> 
> Greg, is Richard's comment right? If so, I'll drop this patch.

Heh.

Richard is the only person on thread who is a Lawyer with a Wikipedia
page.  https://en.wikipedia.org/wiki/Richard_Fontana Let's just assume
everything he says is 100% correct.

regards,
dan carpenter
