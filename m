Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339017B0376
	for <lists+linux-spdx@lfdr.de>; Wed, 27 Sep 2023 14:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231572AbjI0MEC (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 27 Sep 2023 08:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbjI0MD4 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 27 Sep 2023 08:03:56 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CCCB12A
        for <linux-spdx@vger.kernel.org>; Wed, 27 Sep 2023 05:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695816192;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OIJdWPFNkLfDudtONt3WjWlis6fmp6gJVF1FOUUG9fU=;
        b=NRojGLzw7wm1spsIrDhpWrz9aT+eKnZhvkbPXM8Fcu3BK1Aey/gCY1P6qMQmx3Bk7BU/Xz
        BTigzYvtYBmBeNo4u11PxPt9b2KkGOfXgT2StHRQcLfrIqA/B6FxZCDAWp9yFltz+qFwVg
        N9Lo3kJozaNNLLmovmCV/jxzawg+8r8=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-193-cTvCuSQSOVOgQ3U_dJocEg-1; Wed, 27 Sep 2023 08:03:09 -0400
X-MC-Unique: cTvCuSQSOVOgQ3U_dJocEg-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-77407e21d49so1791223085a.0
        for <linux-spdx@vger.kernel.org>; Wed, 27 Sep 2023 05:03:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695816189; x=1696420989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OIJdWPFNkLfDudtONt3WjWlis6fmp6gJVF1FOUUG9fU=;
        b=Vag3/ILlSRjKa1zsPHGSuTbdAZ853bczU5IESAt3pSWtGwwqMcZ+u4lK/r9iPDk/Bi
         Xet9EILay0pbzWdxh3U2nJ49AAJdBn2iqq/fd0xQZztvY2n6WvY2OcFyV8HHXl0ZkncB
         FUHDjoUiQfRlI8y27h6yOovMREMysLu+jMfSXOBN6iY44eC49RXQ3Apz1qkN+HCaGSmi
         E4nOHewe+Yj5Wdb08E6vQ0tIH1RWrXXFrVsObd5LGhtANkAdyg6dbCrkcYk+fylMEp92
         ORnESM+XxGcgU/VvEA4J/mGLzOWv6LzwKKRDgxwDE3dpD9ZCRaDOh2JkZLUlMd0wJvVz
         R0uw==
X-Gm-Message-State: AOJu0YwL09PloAp6otkjNBHy0t56zsWv5JuH0OpNAgAUZcwAf1EnKqhr
        Sc5rfQj/3JQEeAa8aVlhYHLhs662iGAgkfQaamPjDKPWzvXmVg501DLBXUyyUJUehvnkEsVhFGm
        AaTj6yG1cOBCoLEASfKT6og==
X-Received: by 2002:a05:620a:3885:b0:774:108a:b537 with SMTP id qp5-20020a05620a388500b00774108ab537mr1323440qkn.42.1695816188942;
        Wed, 27 Sep 2023 05:03:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/e4xgrXENJoifhRKXLsQ1PlmJmOxOGeD34II+VIHXNNhkFbt7ctmSpSSOxYIwcBi5qLWAQQ==
X-Received: by 2002:a05:620a:3885:b0:774:108a:b537 with SMTP id qp5-20020a05620a388500b00774108ab537mr1323395qkn.42.1695816188475;
        Wed, 27 Sep 2023 05:03:08 -0700 (PDT)
Received: from [10.16.200.42] (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id w15-20020ae9e50f000000b0077423f849c3sm3607412qkf.24.2023.09.27.05.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 05:03:07 -0700 (PDT)
Message-ID: <2010c7a4-8754-2563-cd55-35bdd854d04e@redhat.com>
Date:   Wed, 27 Sep 2023 08:03:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] net: appletalk: remove cops support
To:     Christoph Hellwig <hch@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spdx@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
        jschlst@samba.org
References: <20230927090029.44704-2-gregkh@linuxfoundation.org>
 <ZRP1R65q43PZj7pc@infradead.org>
From:   Prarit Bhargava <prarit@redhat.com>
In-Reply-To: <ZRP1R65q43PZj7pc@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 9/27/23 05:26, Christoph Hellwig wrote:
> On Wed, Sep 27, 2023 at 11:00:30AM +0200, Greg Kroah-Hartman wrote:
>> The COPS Appletalk support is very old, never said to actually work
>> properly, and the firmware code for the devices are under a very suspect
>> license.  Remove it all to clear up the license issue, if it is still
>> needed and actually used by anyone, we can add it back later once the
>> license is cleared up.
> 
> Looks good:
> 
> Acked-by: Christoph Hellwig <hch@lst.de>
> 

Ditto.

Acked-by: Prarit Bhargava <prarit@redhat.com>

P.

