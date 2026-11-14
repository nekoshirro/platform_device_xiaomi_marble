/*
 * SPDX-FileCopyrightText: 2025 Paranoid Android
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.settings.thermal.ui

import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.rounded.Check
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.android.settingslib.spa.framework.theme.SettingsShape
import org.lineageos.settings.thermal.ThermalUtils.ThermalState

/**
 * Dropdown menu for selecting thermal profiles.
 */
@Composable
fun ThermalDropdownMenu(
    expanded: Boolean,
    currentState: ThermalState,
    onDismiss: () -> Unit,
    onStateSelected: (ThermalState) -> Unit,
    modifier: Modifier = Modifier
) {
    DropdownMenu(
        expanded = expanded,
        onDismissRequest = onDismiss,
        modifier = modifier,
        shape = SettingsShape.CornerExtraLarge1,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
    ) {
        ThermalState.values().forEach { state ->
            val isSelected = state == currentState
            DropdownMenuItem(
                text = {
                    Text(
                        text = stringResource(state.label),
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = if (isSelected) FontWeight.SemiBold else FontWeight.Normal,
                        color = if (isSelected) {
                            MaterialTheme.colorScheme.primary
                        } else {
                            MaterialTheme.colorScheme.onSurface
                        }
                    )
                },
                leadingIcon = if (isSelected) {
                    {
                        Icon(
                            imageVector = Icons.Rounded.Check,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                } else null,
                onClick = { onStateSelected(state) }
            )
        }
    }
}
