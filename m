Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C1675303A5
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 16:54:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347563AbiEVOyx (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 10:54:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347562AbiEVOyx (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 10:54:53 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7F4C17A9B
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 07:54:52 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653231291;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=E33xCRYzOF78SrsoGQ4kZRv34Y/QQudYgw4+7emZsqw=;
        b=bpwEwOMzy6gLwwL4HFHHoKz/U+dXN5T9CAfbAMVDkQZ4GCCO9aj1gpXZMNZM+YI20xt5Gh
        e8CdHWRaxCb4ZfFGV3pNP0Ca1sKlMALNz2Dp7rErTHEx5mGJBC08YFJZjF9L2BptPIBVnS
        LUQS68pYwADCVlmVPUbUJTru64gTqHfgxMM0WrrmG1rHBmuk3mdg3hCDrLpkWkcidUp5o1
        dKd1U4DWjX3EIg53L4SkHz5tc3EsyAZyaWRqVBOH+ePeVX6GHWzdb5KINjRSlhJ6Y6pOBk
        CYhvjYRZT3wln8HkYwQ4IBnSqeTMZfP9lhRtyBQpcj6H52bpyX85SQNo0Nn3Dg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653231291;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=E33xCRYzOF78SrsoGQ4kZRv34Y/QQudYgw4+7emZsqw=;
        b=iLjFXeLDvJ+s8AnlEnwGFb7xPbUbs+EmG3xlf+ep2hQZWLSdbpw6ZsdigQNYkrvVo+XJgw
        eBwbYO9s95eHNAAQ==
To:     Rik van Riel <riel@surriel.com>
Cc:     linux-spdx@vger.kernel.org
Subject: mm: License cleanup
Message-ID: <165322121913.3770149.138305319580029182.tglx@xen13>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Date:   Sun, 22 May 2022 16:54:50 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rik!

As you might know we are working on cleaning up the licensing mess in the
kernel and convert it to SPDX license identifiers as the only source of
license information.

Archaeology found the following unspecific GPL license reference, which
have been authored by you:

  mm/rmap.c: released under the general public license (gpl)

Can you please either send a cleanup patch or indicate which GPLv2 variant
you had in mind and I run it through my cleanup machinery.

Thanks,

	Thomas

