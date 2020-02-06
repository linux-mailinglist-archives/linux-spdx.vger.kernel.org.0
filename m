Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 08722154452
	for <lists+linux-spdx@lfdr.de>; Thu,  6 Feb 2020 13:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727325AbgBFMy6 (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 6 Feb 2020 07:54:58 -0500
Received: from Galois.linutronix.de ([193.142.43.55]:37774 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726765AbgBFMy6 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 6 Feb 2020 07:54:58 -0500
Received: from [212.140.138.205] (helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1izggH-0003AQ-T2; Thu, 06 Feb 2020 13:54:54 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id 7814A100C31; Thu,  6 Feb 2020 12:54:53 +0000 (GMT)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     bage@linutronix.de, devicetree@vger.kernel.org
Cc:     Bastian Germann <bage@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Benedikt Spranger <b.spranger@linutronix.de>,
        Jelle de Jong <jelledejong@powercraft.nl>,
        linux-spdx@vger.kernel.org
Subject: Re: [PATCH 3/5] ARM: dts: sun7i: lamobo-r1: Use SPDX identifier
In-Reply-To: <20200206113328.7296-4-bage@linutronix.de>
References: <20200206113328.7296-1-bage@linutronix.de> <20200206113328.7296-4-bage@linutronix.de>
Date:   Thu, 06 Feb 2020 12:54:53 +0000
Message-ID: <87eev7swo2.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Bastian,

bage@linutronix.de writes:
> From: Bastian Germann <bage@linutronix.de>
>
> Adopt the SPDX license identifier.
>
> The 2nd license text is specified by SPDX as MIT.  So the identifier has
> to be (GPL-2.0-or-later OR MIT).  SPDX's X11 has an additional advertising
> clause.

Yes, the license text of the alternative license is plain MIT.

> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>  /*
>   * Copyright 2015 Jelle de Jong <jelledejong@powercraft.nl>
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.

Jelle, can you please clarify your intention here?

> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */

Thanks,

        tglx
