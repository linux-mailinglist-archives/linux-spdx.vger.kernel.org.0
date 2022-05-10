Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADAA052157C
	for <lists+linux-spdx@lfdr.de>; Tue, 10 May 2022 14:29:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241803AbiEJMdw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 10 May 2022 08:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241462AbiEJMdv (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 10 May 2022 08:33:51 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 803D32A3BF5
        for <linux-spdx@vger.kernel.org>; Tue, 10 May 2022 05:29:54 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id l7-20020a17090aaa8700b001dd1a5b9965so2009424pjq.2
        for <linux-spdx@vger.kernel.org>; Tue, 10 May 2022 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Jp7HjFBFx3m1li+wnracJc1zJal8gZ4hoEqGbVeKt/I=;
        b=dQ9mqsipznukUKDUkmGqQ6cNYBKwXMZ6FykGsE/msGVDR87AK14dpp08ZVEpPQzJ5e
         dadLbFK2qQsI2ASI+cILavLkdHwguE51X6a896gLTxd7pS+k2pMbbmfux4zNkQrIBCfm
         XQLVRknw18d84O0e16om6yLrPQ/nHttcRSddgewV3rh6FC6/UTZbfZR7zxZDynpjTctQ
         OY3HP76EtZCi2sTUssIj4yml6XGZIaVfns5p2VtyBXHNN9/ASxJoiYvUt5LkNBoP8bBv
         XQZ7dqo3urs1YpRnZCdP9P9KIJbsSGVifu13+MPT/2WJoghejG/UMHb13aw0z0/bL0AQ
         4E6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Jp7HjFBFx3m1li+wnracJc1zJal8gZ4hoEqGbVeKt/I=;
        b=2CVs2wTmBJbWt36X9nuuhD8AhrZzvHxVMYSj1Fd15CmLvMMBaFKQsB9+OKkNq0j6hG
         ZurSiD26SHc5n2qok3ZPDjJEf9jvjCC+jgA2sH6v7NHkCLrjh36dDHdIzaE4WHxzs13t
         QaWPCY9jkCWmYxxqS9JyGcZ5+95Y5GR/G+/vxFKAwKSDjPZT9EYSuk0kUnLkD1/78UpF
         fvP5POA7C/Uaf4FDPx/dTI3WjPLpxURcLRm9dHJDU8vFNA31lqWI17ZVQZgvDFS9snOR
         TQv9o8PVmk/OV0XxyYrcwI5SX8EC2onOXv6VmA7wFdZ6ZreCdMjPpdTP/03qBHHAKdDj
         ICog==
X-Gm-Message-State: AOAM531AV69yQ0Ig0HBTWx9TGf3WTIWd/cLbcz830SCPgDxDqFbUh8/T
        RgANEdPMdrHr/6qowhudW0WHUxfDdVDwyCf4
X-Google-Smtp-Source: ABdhPJwgJU11iFqgteUqesG2Y4aoSdv556T/SpO5vBCJUnsWGbRSoSZAfC+9tXV7a2csI0sDnod51g==
X-Received: by 2002:a17:90a:c595:b0:1d9:532e:52fd with SMTP id l21-20020a17090ac59500b001d9532e52fdmr23180190pjt.79.1652185794001;
        Tue, 10 May 2022 05:29:54 -0700 (PDT)
Received: from [192.168.1.100] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id j5-20020a170902c3c500b0015e8d4eb2besm1861400plj.264.2022.05.10.05.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 05:29:53 -0700 (PDT)
Message-ID: <c393d0dd-05a9-2a12-92a2-eebd8d49c2dd@kernel.dk>
Date:   Tue, 10 May 2022 06:29:52 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: SPDX tag and top of file comment cleanups for the loop driver
Content-Language: en-US
To:     Christoph Hellwig <hch@lst.de>, tytso <tytso@mit.edu>
Cc:     linux-block@vger.kernel.org, linux-spdx@vger.kernel.org
References: <20220419063303.583106-1-hch@lst.de> <YnGLRAuS8QGaSADK@mit.edu>
 <20220503201334.GA7325@lst.de> <YnGgP7ubsXxFTaZE@mit.edu>
 <20220510072243.GB11929@lst.de>
From:   Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20220510072243.GB11929@lst.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 5/10/22 1:22 AM, Christoph Hellwig wrote:
> Jens,
> 
> are the comments from Ted here enough to apply the series?  Or do
> we need a formal Acked-by to be on the safe side?

Looks conclusive enough to me - if not, Ted, please holler. I'll
queue it up.

-- 
Jens Axboe

