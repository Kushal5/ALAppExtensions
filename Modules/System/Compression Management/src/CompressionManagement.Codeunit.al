﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
///
/// </summary>
codeunit 425 "Compression Management"
{
    Access = Public;

    var
        CompressionManagementImpl: Codeunit "Compression Management Impl.";

        /// <summary>
        /// Creates a new ZipArchive instance.
        /// </summary>
    procedure CreateZipArchive()
    begin
        CompressionManagementImpl.CreateZipArchive();
    end;

    /// <summary>
    /// Creates a ZipArchive instance from the given InStream.
    /// </summary>
    /// <param name="InputStream">The InStream that contains the content of the compressed archive.</param>
    /// <param name="ZipArchiveModeIsUpdate">Indicates whether the archive should be open in Update or Read mode.</param>
    procedure OpenZipArchive(InputStream: InStream; ZipArchiveModeIsUpdate: Boolean)
    begin
        CompressionManagementImpl.OpenZipArchive(InputStream, ZipArchiveModeIsUpdate);
    end;

    /// <summary>
    /// Creates a ZipArchive instance from the given InStream.
    /// </summary>
    /// <param name="InputStream">The InStream that contains the content of the compressed archive.</param>
    /// <param name="ZipArchiveModeIsUpdate">Indicates whether the archive should be open in Update or Read mode.</param>
    /// <param name="EncodingCodePageNumber">Specifies the code page number of the text encoding which is used for the compressed archive entry names in the input stream.</param>
    procedure OpenZipArchive(InputStream: InStream; ZipArchiveModeIsUpdate: Boolean; EncodingCodePageNumber: Integer)
    begin
        CompressionManagementImpl.OpenZipArchive(InputStream, ZipArchiveModeIsUpdate, EncodingCodePageNumber);
    end;

    /// <summary>
    /// Creates a ZipArchive instance from the given instance of Temp Blob codeunit.
    /// </summary>
    /// <param name="TempBlob">The instance of Temp Blob codeunit that contains the content of the compressed archive.</param>
    /// <param name="ZipArchiveModeIsUpdate">Indicates whether the archive should be open in Update or Read mode.</param>
    procedure OpenZipArchive(TempBlob: Codeunit "Temp Blob"; ZipArchiveModeIsUpdate: Boolean)
    begin
        CompressionManagementImpl.OpenZipArchive(TempBlob, ZipArchiveModeIsUpdate);
    end;

    /// <summary>
    /// Saves the ZipArchive to the given OutStream.
    /// </summary>
    /// <param name="OutputStream">The OutStream to which the ZipArchive is saved.</param>
    procedure SaveZipArchive(OutputStream: OutStream)
    begin
        CompressionManagementImpl.SaveZipArchive(OutputStream);
    end;

    /// <summary>
    /// Saves the ZipArchive to the given instance of Temp Blob codeunit.
    /// </summary>
    /// <param name="Temp Blob">The instance of the Temp Blob codeunit to which the ZipArchive is saved.</param>
    procedure SaveZipArchive(var TempBlob: Codeunit "Temp Blob")
    begin
        CompressionManagementImpl.SaveZipArchive(TempBlob);
    end;

    /// <summary>
    /// Disposes the ZipArchive.
    /// </summary>
    procedure CloseZipArchive()
    begin
        CompressionManagementImpl.CloseZipArchive();
    end;

    /// <summary>
    /// Returns true if and only if the given InStream contains a GZip archive.
    /// </summary>
    /// <param name="InStream">The InStream that contains binary content.</param>
    [Scope('OnPrem')]
    procedure IsGZip(InStream: InStream): Boolean
    begin
        EXIT(CompressionManagementImpl.IsGZip(InStream));
    end;

    /// <summary>
    /// Returns the list of entries for the ZipArchive.
    /// </summary>
    /// <param name="EntryList">The list that is populated with the list of entries of the ZipArchive instance.</param>
    procedure GetEntryList(var EntryList: List of [Text])
    begin
        CompressionManagementImpl.GetEntryList(EntryList);
    end;

    /// <summary>
    /// Extracts an entry from the ZipArchive.
    /// </summary>
    /// <param name="EntryName">The name of the ZipArchive entry to be extracted.</param>
    /// <param name="OutputStream">The OutStream to which binary content of the extracted entry is saved.</param>
    /// <param name="EntryLength">The length of the extracted entry.</param>
    procedure ExtractEntry(EntryName: Text; OutputStream: OutStream; var EntryLength: Integer)
    begin
        CompressionManagementImpl.ExtractEntry(EntryName, OutputStream, EntryLength);
    end;

    /// <summary>
    /// Adds an entry to the ZipArchive.
    /// </summary>
    /// <param name="StreamToAdd">The InStream that contains the binary content that should be added as an entry in the ZipArchive.</param>
    /// <param name="PathInArchive">The path that the added entry should have within the ZipArchive.</param>
    procedure AddEntry(StreamToAdd: InStream; PathInArchive: Text)
    begin
        CompressionManagementImpl.AddEntry(StreamToAdd, PathInArchive);
    end;
}

