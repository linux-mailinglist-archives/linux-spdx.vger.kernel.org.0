Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52EB17AEE30
	for <lists+linux-spdx@lfdr.de>; Tue, 26 Sep 2023 15:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234902AbjIZNuX (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 26 Sep 2023 09:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234898AbjIZNuW (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 26 Sep 2023 09:50:22 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9833BAF
        for <linux-spdx@vger.kernel.org>; Tue, 26 Sep 2023 06:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695736169;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=4C56luI1yIvwRHDpHVufftdIhQx84xtyzzNY7vJ9hCY=;
        b=L7moxE+pkhAzRKn3bXQI2jnGEa8XXfAoIvhyVSN1awiJOe9pvlS25NyMa9F2UHwkm1/Hmj
        5hu2g9bTPjM8tWZOdnUIrXO3vI6cTNoOjt0OECcXRxe0gdhc7WpUpuu8LY5nfv4FuapjVz
        o+Vp+gfF9iW1jjIN2Hj743q26XtD9KU=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-kboZO0O3PHyHb4_SqLywzw-1; Tue, 26 Sep 2023 09:49:28 -0400
X-MC-Unique: kboZO0O3PHyHb4_SqLywzw-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7740b1868d5so1745626485a.0
        for <linux-spdx@vger.kernel.org>; Tue, 26 Sep 2023 06:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695736168; x=1696340968;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4C56luI1yIvwRHDpHVufftdIhQx84xtyzzNY7vJ9hCY=;
        b=VX7GKlY4QCWqglHTrEo+4KvFwWduqZirWyabQv6e79wdO6fKZzMzE0J9IQ6umh08Mm
         RVaqGFH1j3k5vFrQdIQnSvzASLmg1a4SyTvwWUDrRbkwOOHD2GfeagEpz65oySpodISQ
         tuNm3JH21Ebt0ovZwUYeQln4KAKNOsbMBUSrL+MdSE4HSOwVDYHu5g5gJw2L/aA0Qewo
         jK7m3iYXhBuaIFpV5QDiOE247w5DKHE39WIMTKj+1m3wWA5XtNdxXrb8nP9OUt+VO88O
         GExgBi+MauokiAz8oCxmqwSY7B1K+DAEaaBSAGpDbI8ZaJdnm/uz18Zof1pTc383KtdP
         mzLQ==
X-Gm-Message-State: AOJu0Yz4prj+O6m31kbZLAtI2PvMXo+IZHKzd0bIO6xLzljKLOMySK7c
        n0CJ6PZ5rSvKruJs1Cxi7d/xlXyDn+70v1yK2YC1BCLCTKccADej6Mb6wJ54DKMjiCUpEwrotdO
        /22J9xTPSuS7G447g1WLqxQ==
X-Received: by 2002:a05:620a:3185:b0:76f:16e9:be92 with SMTP id bi5-20020a05620a318500b0076f16e9be92mr10457494qkb.11.1695736168071;
        Tue, 26 Sep 2023 06:49:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYE4YAAY6cD1EUMifGhcYtTpFNaHQT4dZG6CtdR8jUzS5BwIFbjf0iNXU63ERpz4ZAYZJVsw==
X-Received: by 2002:a05:620a:3185:b0:76f:16e9:be92 with SMTP id bi5-20020a05620a318500b0076f16e9be92mr10457476qkb.11.1695736167799;
        Tue, 26 Sep 2023 06:49:27 -0700 (PDT)
Received: from [10.16.200.42] (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id m19-20020ae9e713000000b0076c8fd39407sm1719099qka.113.2023.09.26.06.49.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 06:49:26 -0700 (PDT)
Message-ID: <b965d53c-2c01-832c-736c-f7db8d4217cd@redhat.com>
Date:   Tue, 26 Sep 2023 09:49:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: SPDX: Appletalk FW license in the kernel
To:     Greg KH <gregkh@linuxfoundation.org>,
        Christoph Hellwig <hch@infradead.org>
Cc:     Dave Miller <davem@redhat.com>,
        Vitaly Kuznetsov <vkuznets@redhat.com>, jschlst@samba.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-spdx@vger.kernel.org
References: <6100798b-ab1d-262a-fd5b-435d6dfc4a53@redhat.com>
 <ZRKJa+cMsFxiizKb@infradead.org> <2023092606-fiction-finlike-97a5@gregkh>
From:   Prarit Bhargava <prarit@redhat.com>
In-Reply-To: <2023092606-fiction-finlike-97a5@gregkh>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 9/26/23 04:02, Greg KH wrote:
> On Tue, Sep 26, 2023 at 12:34:03AM -0700, Christoph Hellwig wrote:
>> On Fri, Sep 15, 2023 at 09:39:05AM -0400, Prarit Bhargava wrote:
>>> To be clear, I am not asking for their removal, however, I do think a better
>>> license should be issued for these files.  The files were trivially modified
>>> in 2006. It could be that the code in question is now unused and it is just
>>> easier to remove them.
>>>
>>> Is there anyone you know of that we could approach to determine a proper
>>> SPDX License for these files?
>>
>> The code contains firmware that is downloaded to the device.  The proper
>> thing would be to convert them to separate binary files in the
>> linux-firmware packages.  But given that the driver has seen nothing
>> but tree wide cleanups since the dawn of git I suspect there is no
>> maintainer and probably no user left.  The best might be to indeed just
>> remove it and see if anyone screams, in which case we could bring it
>> back after doing the above.
>>
> 
> We should just remove them for now, I have no objection to that at all.
> 
> Want me to send the patch?

Yes, that would be appreciated.  Thanks :)

P.

> 
> thanks,
> 
> greg k-h
> 

