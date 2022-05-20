Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE9CD52F1E8
	for <lists+linux-spdx@lfdr.de>; Fri, 20 May 2022 19:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352100AbiETRyF (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 20 May 2022 13:54:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352175AbiETRyE (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 20 May 2022 13:54:04 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D939187DB4
        for <linux-spdx@vger.kernel.org>; Fri, 20 May 2022 10:54:03 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id j2so15510050ybu.0
        for <linux-spdx@vger.kernel.org>; Fri, 20 May 2022 10:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iApAdyBX8ilcGDG8gvIwdHm4qN+IMFua5cISFSS7Cfc=;
        b=B+rcO9Cf3hWEhVg8pGKEqlPG/bloz6ugIfqlnsZUR4YGABayH9/9wpTXUXNuT7hbWR
         2WhsO+0vg5oPL52Cv6BkQLugaiF2fg54BlMy7gwJqJBLLiqDCt9SjBFm+CLxZU/R1ydV
         c4VTCsH2JXA+QDMzte+jLWNKo8xtir4fRhguk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iApAdyBX8ilcGDG8gvIwdHm4qN+IMFua5cISFSS7Cfc=;
        b=sf66FL1X0ZbezRWOJziQbukqRA1oHEQEXHu9wjWafbkhj+NRCESQHrv9Xy1znV9ZXw
         ZvN/F+mviXlde4vGQfbXk/x1gIcO4SUdO5a323E+C8uGiRtjQrLJ1ZAL1A3Ungifzx3A
         Ak/LfT8ipJuiC5L07KShle/cafqtmzxpfDkvFgtP6i2nLKD4cUvZZ3eOP4rmFtNoem3N
         Dzg2eXlg86EiYI6QKcuIp+zFKBH9hka+rKh75ZxZB0w8pQU2DbmOkHk4ihOSqtsKigUJ
         VJqibexgmyQ7+BSE3r3fuMFV+D5V6kidlQZsZjn+WQlxHwojurR0xqLOXn8MqxtMi6Od
         nv+g==
X-Gm-Message-State: AOAM530qJhD71pLjguyUYLAgu0gH01zGlxxC3gUTDNGfVFCubhMnKBiA
        yfM13KMGYt2aESDkD8hOJq+Nmj7raTpA/9Q29Es9wFLC44EZFw==
X-Google-Smtp-Source: ABdhPJwIhh8yTz4dzzAk7wj2hCgyY+1vKToTj62xyVZw/o722sTV3hniOTX3c5D6FummiSKEVhTO8GlyC0kJptSJLks=
X-Received: by 2002:a25:7695:0:b0:64e:b01b:c94c with SMTP id
 r143-20020a257695000000b0064eb01bc94cmr11168738ybc.35.1653069242275; Fri, 20
 May 2022 10:54:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220518132345.40615-1-Jason@zx2c4.com> <87v8u0i0vq.ffs@tglx>
In-Reply-To: <87v8u0i0vq.ffs@tglx>
From:   Kate Stewart <kstewart@linuxfoundation.org>
Date:   Fri, 20 May 2022 12:53:50 -0500
Message-ID: <CAG_66ZSHrHpXu7mJ_-67QgdL2Ubrxg2BAtn3n3YECdHYDHtSDg@mail.gmail.com>
Subject: Re: [PATCH] siphash: add SPDX tags as sole licensing authority
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     "Jason A. Donenfeld" <Jason@zx2c4.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Thanks for this bit of cleanup Jason!   Much appreciated.

On Fri, May 20, 2022 at 12:12 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Wed, May 18 2022 at 15:23, Jason A. Donenfeld wrote:
> > The text "dual BSD/GPLv2 license" is somewhat ambiguous, and moving this
> > over to SPDX is overdue. This commit adds SPDX tags to the relevant
> > files and clarifies that it's GPLv2 only and 3-clause BSD. It also
> > removes the old text, so that the SPDX tags are the only source of the
> > information.
> >
> > Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
>
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: Kate Stewart <kstewart@linuxfoundation.org>
