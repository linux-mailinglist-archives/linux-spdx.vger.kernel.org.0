Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 592273D6F94
	for <lists+linux-spdx@lfdr.de>; Tue, 27 Jul 2021 08:42:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234673AbhG0Gme (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 27 Jul 2021 02:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234349AbhG0Gme (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 27 Jul 2021 02:42:34 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D6E1C061757
        for <linux-spdx@vger.kernel.org>; Mon, 26 Jul 2021 23:42:33 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id da26so13952814edb.1
        for <linux-spdx@vger.kernel.org>; Mon, 26 Jul 2021 23:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=COgVSlPCxVL3gpQD9Gb4LOE0Gmmuiz+K6t7JW90krig=;
        b=ffkqLTLjoiIODmWTaD9YxJ7iDeW0Rsih5GLvTc+vNdNMI61zsE2yLG04oBywxcp0Je
         DGT7+socrTKMMA8bYdsNN18iveqpKIz7a79XnvwGsH6MRf7IILZLyamHNFGpYokpUeM3
         kE9GVumMqNehhmzVemp8akVIbvXFOydqWip2mzKsesy37KezUGyIYH2qOaQlF1nLswRO
         L5gvkd+mPUxBArhTVA3IZRxVweCLsexSJh6qPKqqvB8s2kzVuE475W5hwEHIxz83NdMV
         T9gMufaNS30/WcRQbg80M4tTwDHGcslO7nbTcPcm2q6NrSiOm9+IvY1CysfGMQPN3gAq
         1jeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=COgVSlPCxVL3gpQD9Gb4LOE0Gmmuiz+K6t7JW90krig=;
        b=n+cRODwcnwvYt4k8u/Gi8KR6lFWyA35ZfLUaNjU9JQCHvixl0Z8+tc2vqdEJM/PUHA
         fYTmIeD5XjeH5/ciape0/j595Mqy4kvPtW/MjsAFPmshn50YN/ZDHVzOCnLgm1H0Ucf9
         mjT9imbDOlDVg3KhdfxTJpXPfLEVpj3fCe56hKggv1+6APhGbHO+P3KrPQbqML//XyBI
         PDF0cfOzP9B5eR542UMQ1UA5K3VNEO5UgCSYbRygVZXQaNeVnoOE5yFtKVJnz0LxWSxa
         Oq5yKWB0Y5Lfx1kslmT39gd3C4tdqRWf+orH1WdWxfNMp3DEkQ6emLnxzgYLPOe7kcf7
         qC1Q==
X-Gm-Message-State: AOAM533Gm/tL0bv7pvG7sHTaXLIGikcO2lv2psexI4C19FKlFiV1AaBL
        RW1o77ESPpwqZ682Z+KYDHEpHB89Z/qI1ylN/ge5tQILlQA=
X-Google-Smtp-Source: ABdhPJw6ppQmZZ1pUrS5in5HIEBq3jLLr2wgFf9VElHarRkl5YneFlupBik4p7GbQXwN1lpASv/o9cI5qA0WyL3UP70=
X-Received: by 2002:aa7:cd96:: with SMTP id x22mr26599060edv.102.1627368152208;
 Mon, 26 Jul 2021 23:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
In-Reply-To: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
From:   Nicky Chorley <ndchorley@gmail.com>
Date:   Tue, 27 Jul 2021 07:42:21 +0100
Message-ID: <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
Subject: Fwd: scripts/spdxcheck.py's third-party dependencies
To:     linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Resending to linux-spdx.

---------- Forwarded message ---------
From: Nicky Chorley <ndchorley@gmail.com>
Date: Sun, 25 Jul 2021 at 20:35
Subject: scripts/spdxcheck.py's third-party dependencies
To: <tglx@linutronix.de>, <gregkh@linuxfoundation.org>


Hi folks,

On linux-next (tag: next-20210723), running scripts/checkpatch.pl
complains, with e.g.

Traceback (most recent call last):
   File "scripts/spdxcheck.py", line 10, in <module>
     import git
ModuleNotFoundError: No module named 'git'

and the same for ply if you don't have those libraries installed. Would it
be OK to add a pip requirements.txt file, so that people can use that to
install those and not have to manually go hunt them down? In future,
if other Python scripts needed third-party libraries, those could be
listed in the file too (I had a quick look and didn't see any used in the
others).

Apologies if this has already been covered somewhere - I couldn't see
archive links for linux-spdx on vger.kernel.org.

Best,

Nicky
