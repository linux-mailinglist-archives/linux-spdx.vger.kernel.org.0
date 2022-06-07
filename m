Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94908540298
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 17:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240126AbiFGPin (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 11:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245441AbiFGPin (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 11:38:43 -0400
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF67BA9A2
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 08:38:42 -0700 (PDT)
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 3BB72197AAB
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:38:42 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
        :date:mime-version:subject:to:references:from:in-reply-to
        :content-type:content-transfer-encoding; s=sasl; bh=nSldF9MWiwL7
        vjO62wpN8wEPuZlkUiwLAv83+X+2Vfw=; b=J+x6XQJnVrHreQsvrolRbCTstRNV
        J1HO1dYuOqiDjcJ3uU4/811lq8ME72FqIdbKnT0jQuHe+RN9rQSvUddqJ+m1I41S
        sQpxll2qNZ7ZXoNWV8SD7Izh6lfeutPjjrOmXkWPbj8LsbPTUiXd09Ayzu3D/DIS
        Ghq9pQVrxddICUU=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
        by pb-smtp21.pobox.com (Postfix) with ESMTP id 33E40197AAA
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:38:42 -0400 (EDT)
        (envelope-from allison@lohutok.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=lohutok.net;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-11.pbsmtp; bh=nSldF9MWiwL7vjO62wpN8wEPuZlkUiwLAv83+X+2Vfw=; b=nkdZXdw4Jg3eSE/UZrmAR/q779BK6z/MjAtnX/8oMv65OXP40M/GfZCN96TyvhZC8Mj26vjuYZrmw2fxh9NKixVU6qBf32dmg46KT8EzVkd/CglpdSEH8zLfP3jdA95Duz76SuiDUlOFd3Vp7XagrDLpz7FSJzvTI5Er0AbpDp0=
Received: from [10.0.2.15] (unknown [130.117.184.210])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by pb-smtp21.pobox.com (Postfix) with ESMTPSA id BDF9A197AA9
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 11:38:37 -0400 (EDT)
        (envelope-from allison@lohutok.net)
Message-ID: <22b825e3-068e-c205-d871-63c005f71964@lohutok.net>
Date:   Tue, 7 Jun 2022 11:38:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch V2 13/24] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_168.RULE (part 2)
Content-Language: en-US
To:     linux-spdx@vger.kernel.org
References: <20220607131425.436789559@linutronix.de>
 <20220607131511.120198134@linutronix.de>
From:   Allison Randal <allison@lohutok.net>
In-Reply-To: <20220607131511.120198134@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID: E63E99B8-E677-11EC-BDEF-CBA7845BAAA9-44123303!pb-smtp21.pobox.com
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_CSS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On 6/7/22 10:11, Thomas Gleixner wrote:
> Based on the normalized pattern:
> 
>      this program is free software you may redistribute it and/or modify it
>      under the terms of the gnu general public license as published by the
>      free software foundation version 2 of the license  the software is
>      provided as is without warranty of any kind express or implied
>      including but not limited to the warranties of merchantability fitness
>      for a particular purpose and noninfringement in no event shall the
>      authors or copyright holders be liable for any claim damages or other
>      liability whether in an action of contract tort or otherwise arising
>      from out of or in connection with the software or the use or other
>      dealings in the software

Also possibly-significant deviation.

Allison
