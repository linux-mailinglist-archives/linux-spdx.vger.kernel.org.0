Return-Path: <linux-spdx+bounces-1-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 460047F22E7
	for <lists+linux-spdx@lfdr.de>; Tue, 21 Nov 2023 02:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77E571C20D64
	for <lists+linux-spdx@lfdr.de>; Tue, 21 Nov 2023 01:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F52524C;
	Tue, 21 Nov 2023 01:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="S24mjDjJ"
X-Original-To: linux-spdx@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064B2522C
	for <linux-spdx@vger.kernel.org>; Tue, 21 Nov 2023 01:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABA43C433C7;
	Tue, 21 Nov 2023 01:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1700529029;
	bh=WydedWHI5hgSzmjYaAgFcEvQrWisnvd0Tah1sl3VwoE=;
	h=Date:From:To:Subject:From;
	b=S24mjDjJXi0+y/7WMkLWPaspFF3bW+oC0R6i99c392bAUP7007JMxQlaQGEtFUUAc
	 DjKFyQiAZACwiUcYMNfl74hD9dOIEqs84CJvwif4Vgt0YDa3YlLOzkhU/QTy9s8s6i
	 41vybn0qU02ovLAYXOoOzewGW7FR5EUv+BljetWw=
Date: Mon, 20 Nov 2023 20:10:28 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: linux-spdx@vger.kernel.org
Subject: PSA: this list has moved to new vger infra (no action required)
Message-ID: <20231120-literate-prehistoric-aardwark-aca7ad@nitro>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello, all:

This list has been migrated to new vger infrastructure. No action is required
on your part and there should be no change in how you interact with this list.

This message acts as a verification test that the archives are properly
updating.

If something isn't working or looking right, please reach out to
helpdesk@kernel.org.

Best regards,
-K

