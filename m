Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 893F720ED0E
	for <lists+linux-spdx@lfdr.de>; Tue, 30 Jun 2020 06:57:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726213AbgF3E5d (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 30 Jun 2020 00:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725440AbgF3E5d (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 30 Jun 2020 00:57:33 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0712C061755
        for <linux-spdx@vger.kernel.org>; Mon, 29 Jun 2020 21:57:32 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id dp18so19117925ejc.8
        for <linux-spdx@vger.kernel.org>; Mon, 29 Jun 2020 21:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:user-agent:mime-version;
        bh=qG8C6w1JoDykbbbVS7TiIqDiZxtfOCdS2FJjBjO0Qfs=;
        b=FFCSYYR961U9ieSmZFKsI7aw/uTCfNnPpe30aDXB/BcjJ3VDh+YXiw1AuSY+Mvvugs
         Qo1XOYwMF1hfhiW3tMFE1tnHDaIrZFok2qAB6YIRDIkjKpDrG8F/Bs2DDhVzFVGsExcP
         nqdXUfqzIQTF/8+LktBbBvnFiPWxcUVs4DNCE5cDU4vGlX3vq2yXEEGPUX4rvDo2HXki
         RWiD2JztAZFXRXn5MU6jz/+uuHiq94aVRlpNh3ownsvbzCHsVTDILGaptiC1T2v6b14C
         fiPNQs8402YvshmgFuvOj81RvRN6mOyyfntQhGFwe9riEiPhyAMnTDxYgGljq+bXk9W5
         OdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:user-agent
         :mime-version;
        bh=qG8C6w1JoDykbbbVS7TiIqDiZxtfOCdS2FJjBjO0Qfs=;
        b=L4jK/V246LR6GNcbQB8lulvMIvJnrXepVxKPBWjZsW0AJ6GNCKqv72FR+BaQU67si3
         2oLxyGAKsCniMGHAQ2rL8tQHwDAN/jt8TzXJuRzVGX8Vef6Is+3SAuzOLZ6jz3AGkSJC
         MvWA2oOJz+r5zDjQi0z865bh2xn1LyY+wcX1bDZzZVNZZg7+7jhAqG6lCLPpFIxDAkDY
         5z8CJSGCDKuj2EFdHeCTAchpuBNKvYlVp7Wx76pg6QkbSApiOq9TViJzT7L/VnNIBYj2
         fYV0qsgy+P63EeSGjxv0+wFDZVWO8OdMjX0RN9a5K/0zeafCYqNykNJTf9S6vt8sMGGT
         oi2w==
X-Gm-Message-State: AOAM5320IzuR9sgRdFo7R/VXaI6Y+oeaYLnSoDpvI/jKMV8aanXAFMjk
        +zs6A4+1YPwPz+pNjFsM7kUmIHp91qI=
X-Google-Smtp-Source: ABdhPJwmpIbaLtNnjXe0ertMVu++I5ihP8QJSq4unrJzxRfI5XGOeCxBasjITxkGgMovn6T9ZKX0og==
X-Received: by 2002:a17:906:5c05:: with SMTP id e5mr15144176ejq.203.1593493051534;
        Mon, 29 Jun 2020 21:57:31 -0700 (PDT)
Received: from felia ([2001:16b8:2d31:bc00:387e:45f9:10fe:2445])
        by smtp.gmail.com with ESMTPSA id u60sm1579963edc.59.2020.06.29.21.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 21:57:30 -0700 (PDT)
From:   Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Google-Original-From: Lukas Bulwahn <lukas@gmail.com>
Date:   Tue, 30 Jun 2020 06:57:22 +0200 (CEST)
X-X-Sender: lukas@felia
To:     qla2xxx-upstream@qlogic.com, QLogic-Storage-Upstream@qlogic.com,
        GR-Linux-NIC-Dev@marvell.com
cc:     linux-spdx@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: REMINDER on Qlogic driver license conversion
Message-ID: <alpine.DEB.2.21.2006300644130.4919@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Dear Qlogic driver maintainers,

during an unrelated kernel clean-up task, I noticed some LICENSE files for 
the qlogic drivers hanging around in Documentation.

Thomas Gleixner has provided you a patch series in June 2019 to pick up or 
simply add a Reviewed-by tag here:

https://lore.kernel.org/linux-spdx/20190606205526.447558989@linutronix.de

As it seems from the public mailing list archive, you have never responded 
to Thomas' request. If you could indicate that the change is fine for you,
I am happy to rebase the patch series to the current next tree, so that 
Thomas can pick that up and let it travel through the spdx tree to Linus 
for the next release.

Best regards,

Lukas
