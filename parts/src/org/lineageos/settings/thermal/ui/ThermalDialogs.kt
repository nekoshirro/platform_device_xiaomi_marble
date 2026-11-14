/*
 * SPDX-FileCopyrightText: 2025 Paranoid Android
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings.thermal.ui

import androidx.compose.runtime.Composable
import androidx.compose.ui.res.stringResource
import org.lineageos.settings.R
import org.lineageos.settings.ui.ExpressiveConfirmDialog

/**
 * Confirmation dialog for resetting thermal profiles.
 */
@Composable
fun ResetConfirmationDialog(
    onConfirm: () -> Unit,
    onDismiss: () -> Unit
) {
    ExpressiveConfirmDialog(
        title = stringResource(R.string.thermal_reset),
        message = stringResource(R.string.thermal_reset_message),
        confirmText = stringResource(android.R.string.yes),
        dismissText = stringResource(android.R.string.no),
        destructive = true,
        onConfirm = onConfirm,
        onDismiss = onDismiss,
    )
}
