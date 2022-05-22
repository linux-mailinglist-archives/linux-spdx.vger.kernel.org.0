Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A870D530514
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 20:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241474AbiEVSFG (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 14:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232223AbiEVSFF (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 14:05:05 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 63BC235AA8
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653242701;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=nb/Q1TTgqPNzREeY2SNCLbuEoHdqTlZbsx1pwWEIsRg=;
        b=ckk11ru+WFjtTuhtb8XCY/vn0Ck7tq3mh9uVmHUd0hF+nffaFkHEA5bZWsbx/HYdT8cbY9
        PGF2WeIYZ3WgelKw3pMw9amnjzZB8YUpMFeaWuoEwWKqvOdLOhm4nZSK783GBmMiDp/xY6
        REg3pYTQYq/PEPS8uGFjhI/rgZEDDiE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-KiMtACKeNS2c_7ucKNGGZA-1; Sun, 22 May 2022 14:04:59 -0400
X-MC-Unique: KiMtACKeNS2c_7ucKNGGZA-1
Received: by mail-qv1-f70.google.com with SMTP id a1-20020a056214130100b00456549a0589so9617263qvv.2
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nb/Q1TTgqPNzREeY2SNCLbuEoHdqTlZbsx1pwWEIsRg=;
        b=xKWbeggSWmddog3dcfPDSYdouaYAJfp9FW2YpVemSVzHsv33SPIniTAhavyFJCkS1e
         vhv52NIlzX6GBY1sJpPt8ZO3C7Ckg4b6tskpsYjUWRPQHJgodq1Y3qirKYYVOwcnzYTB
         CU24rhWsCIkP/4ePMMfIfRcSqGVLSi8gErG/9+QFpm/0/DbJgujkEO9uikGSl3mAGSID
         k9rpX9Kh+MFSBDM0M7azSs9SsxJHDmtEI73kAeHglONgSuf3XF360QHMNKaXe+LFsIbX
         uya5OqDPuy9s5+OGbxZvKKsUFhWdodUPyOZanXKiL4dzH7YsUnEkTUzvXPrX20FIle4v
         iGFg==
X-Gm-Message-State: AOAM531irSpqwisd9czF5FothLVmca7GmxKK9hTrETeSf7AAqtUiE5pP
        pEgoAEVZDoUebOXZQz3BMAUsdtMEpvJNkPQTZ4pBQoMNgjsNwPK5xyZInMgKEo+MCDyCiEagr6k
        lPN6+WhnG9scgq3zYLEW6+d6qnf9Z9AkXlF0BYw==
X-Received: by 2002:a05:620a:d4f:b0:67e:9cbf:a969 with SMTP id o15-20020a05620a0d4f00b0067e9cbfa969mr11799643qkl.509.1653242699080;
        Sun, 22 May 2022 11:04:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXP7IlN3R7XWBkJKpz7D0sS6z9da8PoP9GTcC961kfYQ/do4cJlUeJNMSAiZt2pL6FwB43MgbeOQ+t6Rf0rA8=
X-Received: by 2002:a05:620a:d4f:b0:67e:9cbf:a969 with SMTP id
 o15-20020a05620a0d4f00b0067e9cbfa969mr11799632qkl.509.1653242698850; Sun, 22
 May 2022 11:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <87a6b9iia3.ffs@tglx>
In-Reply-To: <87a6b9iia3.ffs@tglx>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Sun, 22 May 2022 14:04:47 -0400
Message-ID: <CAC1cPGze5VtsKLpumm6ZR_Y5PZ06MxoT931JTDKhMH=JjcPWog@mail.gmail.com>
Subject: Re: Licensing of mq_open_tests.c
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     Doug Ledford <dledford@redhat.com>, Shuah Khan <shuah@kernel.org>,
        Michael Dolan <mdolan@linuxfoundation.org>,
        linux-spdx@vger.kernel.org
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sun, May 22, 2022 at 1:33 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Folks!
>
> The file tools/testing/selftests/mqueue/mq_open_tests.c which was
> authored by Doug is licensed under GPLv3 only.
>
> While this is a user space program it includes a GPLv2 only kernel
> header (kselftest.h), which results in a license conflict.
>
> So one of both needs to be relicensed.

From a Red Hat perspective, no problem with this userspace program
being under GPLv2 or GPLv3 (or both, etc.) but as it stands, having
looked at kselftest.h I agree with Thomas that it would have to be
relicensed to something GPLv3-compatible, not necessarily GPLv3
though. I will leave this to Doug and Shuah and anyone else who should
be involved to work out.

Richard

