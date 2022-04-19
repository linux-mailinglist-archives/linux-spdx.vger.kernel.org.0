Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9660C50641A
	for <lists+linux-spdx@lfdr.de>; Tue, 19 Apr 2022 08:00:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234132AbiDSGCw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 19 Apr 2022 02:02:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348742AbiDSGCv (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 19 Apr 2022 02:02:51 -0400
Received: from mail.marcansoft.com (marcansoft.com [IPv6:2a01:298:fe:f::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E02AB2D1D9
        for <linux-spdx@vger.kernel.org>; Mon, 18 Apr 2022 23:00:09 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: marcan@marcan.st)
        by mail.marcansoft.com (Postfix) with ESMTPSA id F1035419C2;
        Tue, 19 Apr 2022 05:59:56 +0000 (UTC)
Message-ID: <e2a6dc4d-0e8a-c4d3-fec3-e8b0b874235a@marcan.st>
Date:   Tue, 19 Apr 2022 14:59:53 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: es-ES
To:     Christoph Hellwig <hch@lst.de>, Sven Peter <sven@svenpeter.dev>
Cc:     Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
        Sagi Grimberg <sagi@grimberg.me>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
        linux-spdx@vger.kernel.org
References: <20220415142055.30873-1-sven@svenpeter.dev>
 <20220415142055.30873-7-sven@svenpeter.dev> <20220419053157.GA31530@lst.de>
From:   Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH v2 6/6] nvme-apple: Add initial Apple SoC NVMe driver
In-Reply-To: <20220419053157.GA31530@lst.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 19/04/2022 14.31, Christoph Hellwig wrote:
> On Fri, Apr 15, 2022 at 04:20:55PM +0200, Sven Peter wrote:
>> +++ b/drivers/nvme/host/apple.c
>> @@ -0,0 +1,1597 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Apple ANS NVM Express device driver
>> + * Copyright The Asahi Linux Contributors
> 
> Is that actually a valid legal entity?

It does not have to be. See here for the rationale behind this style of
copyright line:

https://www.linuxfoundation.org/blog/copyright-notices-in-open-source-software-projects/

TL;DR name- and year-ful copyright lines are basically useless, as they
become out of date almost immediately after they are applied. This way
we acknowledge that the files have multiple contributors (and that the
copyright line isn't trying to be an exhaustive list thereof). This
style is so far rare, but not unheard of, in the kernel; there is prior
art (e.g. grep for 'Chromium OS Authors').

(I get to re-tell this story every time we upstream to a new subsystem;
I think it's the sixth time or so :-) )

-- 
Hector Martin (marcan@marcan.st)
Public Key: https://mrcn.st/pub
