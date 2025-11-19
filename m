Return-Path: <linux-spdx+bounces-99-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D07C6D8E2
	for <lists+linux-spdx@lfdr.de>; Wed, 19 Nov 2025 10:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 4041D2D997
	for <lists+linux-spdx@lfdr.de>; Wed, 19 Nov 2025 09:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A0C32F77B;
	Wed, 19 Nov 2025 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=novencio.pl header.i=@novencio.pl header.b="C3DRqmDN"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail.novencio.pl (mail.novencio.pl [162.19.155.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D543630CD94
	for <linux-spdx@vger.kernel.org>; Wed, 19 Nov 2025 09:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.19.155.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542906; cv=none; b=jwLJmzj4RAf1hASTjn0oehS7wvwLJZmM+tQ96J7gvRYvij/Vi0J9Ra9rhR8gZfhRwwwAfwNjlYrS4M0Tz4DV8dqEydf1yGhLsYmOOgklRIA0yDRtfLcHqeULx3H7EFRJwMR7kiCoZD7ne0MpxVgFznb+iJnJQTpABuU5itLPHUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542906; c=relaxed/simple;
	bh=fIh67CnJs35z4uTVN1yEzBZIG1sWJSjOc8Phu/rB5ug=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=MgVNAyNL4SQddBXFRZx9EyTBm9slDZFqqkmxwY7z7aEC0lTHHoCnl+xYqcj2KxVerNvQQ1vYWmC523yJ5zKi8Uz3LnT4KKdDeiF2IrK++JdzP1eaesFX0l67qIzmgFacR/FjSC2rCJBzZxmEyDFHMxHxUqcuPoyRHmNDVjuoRY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=novencio.pl; spf=pass smtp.mailfrom=novencio.pl; dkim=pass (2048-bit key) header.d=novencio.pl header.i=@novencio.pl header.b=C3DRqmDN; arc=none smtp.client-ip=162.19.155.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=novencio.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=novencio.pl
Received: by mail.novencio.pl (Postfix, from userid 1002)
	id 3905722B81; Wed, 19 Nov 2025 09:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novencio.pl; s=mail;
	t=1763542903; bh=fIh67CnJs35z4uTVN1yEzBZIG1sWJSjOc8Phu/rB5ug=;
	h=Date:From:To:Subject:From;
	b=C3DRqmDNmDrgwVgqMVat76bMyWAfyEboUXLBsEjlm/Ehvf3uFr/VLqXhcxPAilLVO
	 VPWF1zZLl5SVkel/iVXbAHiXU3f6KPIr6RGSmSts/cOn2Jtehu1l5YEBEyaEY5Uoz+
	 XLJ3xDp83y0X1tKwyoaFYQnJohJdQA2Ethd9pXteS4j+iDYFvNZA0AfCgG7AR1x8pr
	 ENEsB9RN951eU3GCLp+1qc8RxWhLUN4JR44ydCuT3LdeAr2pT8gbCFy4KN/HjVj++V
	 NQ3iADuEXp2azoQGmZUFcTTHdrP9/Nt89fOpLlJozt6mq45WD7557AyR/AhnJJxUe1
	 PkOSbgk+KWGNw==
Received: by mail.novencio.pl for <linux-spdx@vger.kernel.org>; Wed, 19 Nov 2025 09:01:03 GMT
Message-ID: <20251119074742-0.1.5y.z4ia.0.tpzdb7gynn@novencio.pl>
Date: Wed, 19 Nov 2025 09:01:03 GMT
From: "Marek Poradecki" <marek.poradecki@novencio.pl>
To: <linux-spdx@vger.kernel.org>
Subject: =?UTF-8?Q?Wiadomo=C5=9B=C4=87_z_ksi=C4=99gowo=C5=9Bci?=
X-Mailer: mail.novencio.pl
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dzie=C5=84 dobry,

pomagamy przedsi=C4=99biorcom wprowadzi=C4=87 model wymiany walut, kt=C3=B3=
ry minimalizuje wahania koszt=C3=B3w przy rozliczeniach mi=C4=99dzynarodo=
wych.

Kiedyv mo=C5=BCemy um=C3=B3wi=C4=87 si=C4=99 na 15-minutow=C4=85 rozmow=C4=
=99, aby zaprezentowa=C4=87, jak taki model m=C3=B3g=C5=82by dzia=C5=82a=C4=
=87 w Pa=C5=84stwa firmie - z gwarancj=C4=85 indywidualnych kurs=C3=B3w i=
 pe=C5=82nym uproszczeniem p=C5=82atno=C5=9Bci? Prosz=C4=99 o propozycj=C4=
=99 dogodnego terminu.


Pozdrawiam
Marek Poradecki

