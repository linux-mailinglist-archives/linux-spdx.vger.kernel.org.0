Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B636F253D56
	for <lists+linux-spdx@lfdr.de>; Thu, 27 Aug 2020 08:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726199AbgH0GAa (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 27 Aug 2020 02:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726028AbgH0GAa (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 27 Aug 2020 02:00:30 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1961C061246
        for <linux-spdx@vger.kernel.org>; Wed, 26 Aug 2020 23:00:29 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id i17so2284966edx.12
        for <linux-spdx@vger.kernel.org>; Wed, 26 Aug 2020 23:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:user-agent:mime-version;
        bh=K6cJEGmuEyaQOs9bcYEwntgd23ZW2gHl7NNPIw1e7r8=;
        b=GE9H3NkQtMgyHnz+OBMp2NxzpkALzgmXu8m4EK+i05OxDKoquqJW3bTybDoI6WHecq
         892P4MP+C5NgjDQBH8nI2M8NlFUxkI9jr+741mRsiS3pBia61Lz6EAjoIo3WRd7C2BVM
         0Mwp89O0BXpzV5HYJNAdADqBLD0emQb+6i0Fs/naa7lUZZNkY9hkAt/HkISLDW/gX5s3
         tPbNoC661Mefs84Q+8umlDbx8imyJntW6I912hlRRJ7vRsn9VrOvy9KeLqDtIUJ/WaQ+
         TR9tkMUOiFk0sigrhp5WOs6gCSHFklj1452lu3uJIwSqLBp7jQas3LfKKqP2mmxhtB0h
         PvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:user-agent
         :mime-version;
        bh=K6cJEGmuEyaQOs9bcYEwntgd23ZW2gHl7NNPIw1e7r8=;
        b=X47gUkQGxxVCb04SON6fPbZAMKmakVux+rcMwaa8xu+ykuEkScTVBgr99+HDjmDSxb
         cErOERAPF7HfFWyBEgaytcdBJdlnFVSyZ3EMu70MwAGZoDlbIUpc5fEW3M+b/QiX0vu1
         g1Iq5eXpLJ5truE81hDhIWBD6KKDnkerhbdqfK2KEHmUsccso4aK0nMj/5IeT2kbeNBy
         L2VUpJrgkdV6nxbGJTdsoRLrjDebBAGQiRncKtTbiDil4hbTuBwYNUnikTcE/xtJ5YEK
         cmaXW2pVwp6xy77yYW8/hq4N5gDaWSJUmPQrzbsf7SishtI8lUM9cTL45h7kN41wk/jt
         z/bA==
X-Gm-Message-State: AOAM533k2z/l7RCgn+CIVhcDWk+X8byQe+dbvqroJLz2xxpF3J7sYybW
        GKFMXpXjoh55PHaPS9MR2fA=
X-Google-Smtp-Source: ABdhPJzyurGQ8MJE8oZPqIoXbEgnvzhGxe3tPDcZGiVkSIJZnHZvqOLvdQcQ16jk7OhA50N5iYnHag==
X-Received: by 2002:a50:f607:: with SMTP id c7mr18040460edn.162.1598508028306;
        Wed, 26 Aug 2020 23:00:28 -0700 (PDT)
Received: from felia ([2001:16b8:2d0c:fc00:340b:71b8:4541:aa75])
        by smtp.gmail.com with ESMTPSA id s30sm774582edc.8.2020.08.26.23.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 23:00:27 -0700 (PDT)
From:   Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Google-Original-From: Lukas Bulwahn <lukas@gmail.com>
Date:   Thu, 27 Aug 2020 08:00:17 +0200 (CEST)
X-X-Sender: lukas@felia
To:     qla2xxx-upstream@qlogic.com, QLogic-Storage-Upstream@qlogic.com,
        GR-Linux-NIC-Dev@marvell.com, Nilesh Javali <njavali@marvell.com>,
        Shahed Shaikh <shshaikh@marvell.com>,
        Manish Chopra <manishc@marvell.com>
cc:     linux-spdx@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: SECOND REMINDER on Qlogic driver license conversion
Message-ID: <alpine.DEB.2.21.2008270740140.31123@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Dear Qlogic driver maintainers, dear Nilesh, deat Shahed, dear Manish,


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

See first reminder here:

https://lore.kernel.org/linux-spdx/alpine.DEB.2.21.2006300644130.4919@felia/

Just to let you know, I will send a third reminder in a few months, and 
if there is no response to that, I will just send a patch to mark those 
drivers where QLogic-Storage-Upstream@qlogic.com or 
GR-Linux-NIC-Dev@marvell.com are maintainers as Orphaned, just to keep 
MAINTAINERS reflect the actual state.


Best regards,

Lukas
