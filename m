Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF8153EF33
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233100AbiFFUKu (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233320AbiFFUKh (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:37 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE5E111BBC
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:31 -0700 (PDT)
Message-ID: <20220606200810.587448999@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546230;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:  references:references;
        bh=SLRqOtpMSyQ4/F02p2yWbHUDBcg+SlF+K0XrBLWKK1I=;
        b=M9uQI1yQyhTj4NHOYXkONGCLR6jP/zrGPPNILvg/FtcLtR0p/fVhWKQQJwELrHoKF5+luZ
        pOCynwHg+8JHyptRYrw8iRhu0CR642mHRTLeyj42IZQtS25OntsDVqJ734RPgL244YrbJC
        4VGJ9bLqQ7Z1959tAjA9f100RnGRB+BMi28dHRXVGfX4xhvezSuBx0XvwPx82yQz6tL9Uc
        7erY1+GxipWE5JyyRHXMAPd3I5ct+DvQBP8TptfIP8lWaDxhg6qMQ1RIiZRhx/Oh6KP6LQ
        P0ZDlwbqjhAbEaJCLZj97H1nv+W1cS4mz+A/70/+pRqsSRz2PCy35wtAWoYlqw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546230;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:  references:references;
        bh=SLRqOtpMSyQ4/F02p2yWbHUDBcg+SlF+K0XrBLWKK1I=;
        b=bWubfUwtzO0F7V8Qd8+zRonlU+P731fdJe9WtyDFJUJ+D6Vo7GnHsjNWDtnyrnbAFMQxKg
        sDNvWz6RFScVtUCQ==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 09/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_160.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 22:10:30 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

QmFzZWQgb24gdGhlIG5vcm1hbGl6ZWQgcGF0dGVybjoKCiAgICB0aGUgY29kZSBjb250YWluZWQg
aGVyZWluIGlzIGxpY2Vuc2VkIHVuZGVyIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMKICAgIGxpY2Vu
c2UgeW91IG1heSBvYnRhaW4gYSBjb3B5IG9mIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMgbGljZW5z
ZQogICAgdmVyc2lvbiAyIGF0IHRoZSBmb2xsb3dpbmcgbG9jYXRpb25zOiAgaHR0cDovL3d3dyBv
cGVuc291cmNlCiAgICBvcmcvbGljZW5zZXMvZ3BsLWxpY2Vuc2UgaHRtbCBodHRwOi8vd3d3IGdu
dSBvcmcvY29weWxlZnQvZ3BsIGh0bWwKCmV4dHJhY3RlZCBieSB0aGUgc2NhbmNvZGUgbGljZW5z
ZSBzY2FubmVyIHRoZSBTUERYIGxpY2Vuc2UgaWRlbnRpZmllcgoKICAgIEdQTC0yLjAtb25seQoK
aGFzIGJlZW4gY2hvc2VuIHRvIHJlcGxhY2UgdGhlIGJvaWxlcnBsYXRlL3JlZmVyZW5jZS4KClNp
Z25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgotLS0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL2lteDIzLXBpbmZ1bmMuaCB8ICAgIDggKy0tLS0tLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDI4LXBpbmZ1bmMuaCB8ICAgIDggKy0tLS0tLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL214cy1waW5mdW5jLmggICB8ICAgIDggKy0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCi0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDIzLXBpbmZ1bmMuaAorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXgyMy1waW5mdW5jLmgKQEAg
LTEsMTQgKzEsOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAq
LwogLyoKICAqIEhlYWRlciBwcm92aWRpbmcgY29uc3RhbnRzIGZvciBpLk1YMjMgcGluY3RybCBi
aW5kaW5ncy4KICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTMgTG90aGFyIFdhw59tYW5uIDxMV0BL
QVJPLWVsZWN0cm9uaWNzLmRlPgotICoKLSAqIFRoZSBjb2RlIGNvbnRhaW5lZCBoZXJlaW4gaXMg
bGljZW5zZWQgdW5kZXIgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYwotICogTGljZW5zZS4gWW91IG1h
eSBvYnRhaW4gYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQotICogVmVy
c2lvbiAyIGF0IHRoZSBmb2xsb3dpbmcgbG9jYXRpb25zOgotICoKLSAqIGh0dHA6Ly93d3cub3Bl
bnNvdXJjZS5vcmcvbGljZW5zZXMvZ3BsLWxpY2Vuc2UuaHRtbAotICogaHR0cDovL3d3dy5nbnUu
b3JnL2NvcHlsZWZ0L2dwbC5odG1sCiAgKi8KIAogI2lmbmRlZiBfX0RUX0JJTkRJTkdTX01YMjNf
UElOQ1RSTF9IX18KLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14MjgtcGluZnVuYy5oCisrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDI4LXBpbmZ1bmMuaApAQCAtMSwxNCArMSw4IEBACisvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCiAvKgogICogSGVhZGVyIHBy
b3ZpZGluZyBjb25zdGFudHMgZm9yIGkuTVgyOCBwaW5jdHJsIGJpbmRpbmdzLgogICoKICAqIENv
cHlyaWdodCAoQykgMjAxMyBMb3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+
Ci0gKgotICogVGhlIGNvZGUgY29udGFpbmVkIGhlcmVpbiBpcyBsaWNlbnNlZCB1bmRlciB0aGUg
R05VIEdlbmVyYWwgUHVibGljCi0gKiBMaWNlbnNlLiBZb3UgbWF5IG9idGFpbiBhIGNvcHkgb2Yg
dGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlCi0gKiBWZXJzaW9uIDIgYXQgdGhlIGZvbGxv
d2luZyBsb2NhdGlvbnM6Ci0gKgotICogaHR0cDovL3d3dy5vcGVuc291cmNlLm9yZy9saWNlbnNl
cy9ncGwtbGljZW5zZS5odG1sCi0gKiBodHRwOi8vd3d3LmdudS5vcmcvY29weWxlZnQvZ3BsLmh0
bWwKICAqLwogCiAjaWZuZGVmIF9fRFRfQklORElOR1NfTVgyOF9QSU5DVFJMX0hfXwotLS0gYS9h
cmNoL2FybS9ib290L2R0cy9teHMtcGluZnVuYy5oCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL214
cy1waW5mdW5jLmgKQEAgLTEsMTQgKzEsOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seSAqLwogLyoKICAqIEhlYWRlciBwcm92aWRpbmcgY29uc3RhbnRzIGZvciBp
Lk1YMjggcGluY3RybCBiaW5kaW5ncy4KICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTMgTG90aGFy
IFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPgotICoKLSAqIFRoZSBjb2RlIGNvbnRh
aW5lZCBoZXJlaW4gaXMgbGljZW5zZWQgdW5kZXIgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYwotICog
TGljZW5zZS4gWW91IG1heSBvYnRhaW4gYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMg
TGljZW5zZQotICogVmVyc2lvbiAyIGF0IHRoZSBmb2xsb3dpbmcgbG9jYXRpb25zOgotICoKLSAq
IGh0dHA6Ly93d3cub3BlbnNvdXJjZS5vcmcvbGljZW5zZXMvZ3BsLWxpY2Vuc2UuaHRtbAotICog
aHR0cDovL3d3dy5nbnUub3JnL2NvcHlsZWZ0L2dwbC5odG1sCiAgKi8KIAogI2lmbmRlZiBfX0RU
X0JJTkRJTkdTX01YU19QSU5DVFJMX0hfXwoK
