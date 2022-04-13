const mongoose = require('mongoose')

const artSchema = new mongoose.Schema({
  artistName: {
    type: String,
    required: true
  },
  artPieceTitle: {
    type: String,
    required: true
  },
  dateArtPieceCreated: {
    type: Date,
    required: true
  },
  artPieceImageLink: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Art', artSchema)
