Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 747233DC5CA
	for <lists+linux-spdx@lfdr.de>; Sat, 31 Jul 2021 13:57:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232787AbhGaL6D (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sat, 31 Jul 2021 07:58:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232690AbhGaL6D (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sat, 31 Jul 2021 07:58:03 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0656DC06175F
        for <linux-spdx@vger.kernel.org>; Sat, 31 Jul 2021 04:57:56 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id h9so6489213ejs.4
        for <linux-spdx@vger.kernel.org>; Sat, 31 Jul 2021 04:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N9ErSzmB3YNgCf2l7I4AHczgC4nA820637eSLCZQOq4=;
        b=kEaIzv3I2y+7zt4ZypfQqNXeWQA9MW38E3EXtlr4JKx9Yf5bu4RLMeMuNhTIDubKYF
         bLi8VZnHiDvYRxRJFB3sNcyPmY0rdNLbw1SqEP8gDOIEY29o/9Smm8xW6oCDy/kfDBbO
         Uo3I4PmdPPLISN2/Nn4AuY4l4Ekh8jMxaYiz/tUcMsInAPbGS0zJjiSA/hk8KpXnHwZM
         1kwNYBsik7bg3rZ+VDv3blH8F8vQNcokW/p3Q7xORljBYvIDq2mPEmpcE6Cm9A2rRWF/
         jUdM+ZK0nRCQhDokwHwdxO8fAI1u8O4mPQub0DWHSnqSjWLI0vukg27PQ+Hyi9q2vww7
         jU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N9ErSzmB3YNgCf2l7I4AHczgC4nA820637eSLCZQOq4=;
        b=Ym7h0E9k66yI+K5j54dFNMHFM7ZYhiF9DXmFrMKLCaypc+MfAsZS/GXmERdmMBhZJo
         c/eVpgiEEC7m9XTW9OtmSMgaw9pD3zRWfZwwDXBBK8rsTyCi5y9z0f3o/caGvNzQXl2h
         wqMlWrjUFpbAlFrHSM7p6/77cIQj5Ic0/0v8qR7JS5hHUymIJPvU8XGtlrFZta8gi6Nb
         X29ZN/rrnEdGPSV7JkXElRfLZ00SamP/BxXh6hCiwSbU51xkVp4M0Uk6NtrBCdmQYM9A
         GGvqUxUHe/hnepxshFg+c/1M/vQYBbhTBXAWYhAl+NznhRCqDtiV6QH1n8B2eWP5UPOb
         x+Dw==
X-Gm-Message-State: AOAM533ByG3l6iRiBqJnQoQYPe6APTWcbZqfZ86j7W6oIe786K9e8oFR
        Y8Y6cqnn7c/jh7ShVcsEb/qXWyLNzVsXrsQkTWXWTnAHpm3Nfg==
X-Google-Smtp-Source: ABdhPJx6YpwKyAA+vQ34jzmiEwRZbaruFUgKzo5rbmYDMkCTjH3zGP9P2+n43COcv8QyMGZK5CG69xEn+FarvdeyC9U=
X-Received: by 2002:a17:906:ce4c:: with SMTP id se12mr7270697ejb.292.1627732674611;
 Sat, 31 Jul 2021 04:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan> <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
 <YP+sCqNlB2g/srHc@kroah.com>
In-Reply-To: <YP+sCqNlB2g/srHc@kroah.com>
From:   Nicky Chorley <ndchorley@gmail.com>
Date:   Sat, 31 Jul 2021 12:57:43 +0100
Message-ID: <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, 27 Jul 2021 at 07:47, Greg KH <gregkh@linuxfoundation.org> wrote:
> How can you add a requirements.txt file for a single script in a
> directory of other scripts?

You can name them (e.g. requirements-spdxcheck.txt), as pip lets you
specify which one to use with its -r option. In addition, if one wants
to have a different set of libraries installed for different scripts
(or projects, generally), Python's virtual environments offer a
lightweight way to do that.

Best,

Nicky
